%% ========================================================================
%  .tsv to soa.mat Converter
%  Created for ds003814 Dataset (10 Subjects x 4 Runs)
%% ========================================================================

clear; clc;

% 定義資料主目錄
base_dir = '\\wsl$\Ubuntu\home\chsinchi\subjects_nii\ds003814\';

% 10 個受試者與 4 個 Run 的宣告
subject_list = {'01', '02', '03', '04', '05', '06', '07', '08', '09', '10'};
num_runs = 4;

% 開始大迴圈（掃描 10 個人）
for s = 1:length(subject_list)
    sub_id = subject_list{s};
    fprintf('=====> 正在處理受試者 sub-ident%s 的時間軸資料...\n', sub_id);
    
    % 進入該受試者的 func 資料夾路徑
    func_dir = fullfile(base_dir, ['sub-ident' sub_id], 'func');
    
    % 小迴圈（掃描 4 個 Run）
    for r = 1:num_runs
        % 1. 動態組裝原始 .tsv 檔案的完整路徑
        tsv_name = sprintf('sub-ident%s_task-tomloc2_run-%02d_events.tsv', sub_id, r);
        full_tsv_path = fullfile(func_dir, tsv_name);
        
        % 檢查檔案是否存在（以防萬一某個受試者缺檔）
        if ~exist(full_tsv_path, 'file')
            warning('找不到檔案：%s，跳過此 Run。', tsv_name);
            continue;
        end
        
        % 2. 用 readtable 讀取 tsv 檔案
        % 'FileType', 'text' 告訴 MATLAB 這是文字檔
        % 'Delimiter', '\t' 告訴它欄位是用 Tab 鍵隔開的
        event_table = readtable(full_tsv_path, 'FileType', 'text', 'Delimiter', '\t');
        
        % 3. 提取表格內容（欄位名稱分別為 onset, duration, trial_type）
        all_onsets    = event_table.onset;
        all_durations = event_table.duration;
        all_types     = event_table.trial_type;
        
        % 4. 自動分類與組裝符合 SPM 規格的 3 大變數
        names = {'Belief', 'Photo'}; % 兩個任務條件名稱
        
        onsets    = cell(1, 2); % 建立裝 onset 的籃子
        durations = cell(1, 2); % 建立裝 duration 的籃子
        
        % 利用邏輯索引（Logical Indexing）自動分流資料！
        % 找出所有屬於 'Belief' 的橫列，並把對應的時間抓出來
        Belief_idx = strcmp(all_types, 'Belief');
        onsets{1}    = all_onsets(Belief_idx);
        durations{1} = all_durations(Belief_idx);
        
        % 找出所有屬於 'Photo' 的橫列
        Photo_idx = strcmp(all_types, 'Photo'); 
        onsets{2}    = all_onsets(Photo_idx);
        durations{2} = all_durations(Photo_idx);
        
        % 5. 儲存成專用 .mat 檔（直接存在該受試者的 func 資料夾內）
        mat_name = sprintf('sub-ident%s_run-%02d_events.mat', sub_id, r);
        full_mat_path = fullfile(func_dir, mat_name);
        
        % 限制 save 的變數，只封裝 names, onsets, durations
        save(full_mat_path, 'names', 'onsets', 'durations');
    end
end

fprintf('\n 40 個 Run 的 Multiple Conditions .mat 檔案已生成完畢\n');