@echo off
chcp 65001 >nul
setlocal

set "LANG_DIR=src\main\resources\assets\block_id\lang"
if not exist "%LANG_DIR%" mkdir "%LANG_DIR%"

echo Updating English (en_us)...
> "%LANG_DIR%\en_us.json" echo {
>>"%LANG_DIR%\en_us.json" echo     "key.block_id.open_gui": "Open Block ID GUI",
>>"%LANG_DIR%\en_us.json" echo     "key.block_id.copy_id": "Copy Block ID",
>>"%LANG_DIR%\en_us.json" echo     "key.categories.block_id": "Block ID",
>>"%LANG_DIR%\en_us.json" echo     "gui.block_id.title": "Block ID Manager",
>>"%LANG_DIR%\en_us.json" echo     "gui.block_id.search": "Search...",
>>"%LANG_DIR%\en_us.json" echo     "gui.block_id.switch_to_copy": "Switch to Copy Mode",
>>"%LANG_DIR%\en_us.json" echo     "gui.block_id.switch_to_replace": "Switch to Replace Mode",
>>"%LANG_DIR%\en_us.json" echo     "gui.block_id.clear_selection": "Clear Selection",
>>"%LANG_DIR%\en_us.json" echo     "gui.block_id.please_select": "Please select blocks first!",
>>"%LANG_DIR%\en_us.json" echo     "gui.block_id.copied_message": "【Block_ID】Copied to clipboard! Press T to paste and send.",
>>"%LANG_DIR%\en_us.json" echo     "gui.block_id.source_label": "Source (Replace)",
>>"%LANG_DIR%\en_us.json" echo     "gui.block_id.target_label": "Target (Replace with)",
>>"%LANG_DIR%\en_us.json" echo     "gui.block_id.copy_mode_label": "Multi-select (Copy/Set)",
>>"%LANG_DIR%\en_us.json" echo     "gui.block_id.selected_target": "Selected Source/Target",
>>"%LANG_DIR%\en_us.json" echo     "gui.block_id.selected": "Selected",
>>"%LANG_DIR%\en_us.json" echo     "gui.block_id.selected_count": "Selected count: %%s",
>>"%LANG_DIR%\en_us.json" echo     "gui.block_id.set": "Copy (Set)",
>>"%LANG_DIR%\en_us.json" echo     "gui.block_id.copy_replace": "Copy (Replace)"
>>"%LANG_DIR%\en_us.json" echo }

echo Updating Chinese Simplified (zh_cn)...
> "%LANG_DIR%\zh_cn.json" echo {
>>"%LANG_DIR%\zh_cn.json" echo     "key.block_id.open_gui": "打开方块ID管理界面",
>>"%LANG_DIR%\zh_cn.json" echo     "key.block_id.copy_id": "复制方块ID",
>>"%LANG_DIR%\zh_cn.json" echo     "key.categories.block_id": "方块ID",
>>"%LANG_DIR%\zh_cn.json" echo     "gui.block_id.title": "方块ID管理器",
>>"%LANG_DIR%\zh_cn.json" echo     "gui.block_id.search": "搜索...",
>>"%LANG_DIR%\zh_cn.json" echo     "gui.block_id.switch_to_copy": "切换到复制模式",
>>"%LANG_DIR%\zh_cn.json" echo     "gui.block_id.switch_to_replace": "切换到替换模式",
>>"%LANG_DIR%\zh_cn.json" echo     "gui.block_id.clear_selection": "清空选择",
>>"%LANG_DIR%\zh_cn.json" echo     "gui.block_id.please_select": "请先选择方块！",
>>"%LANG_DIR%\zh_cn.json" echo     "gui.block_id.copied_message": "【Block_ID】指令已复制到剪贴板！请按 T 键粘贴发送。",
>>"%LANG_DIR%\zh_cn.json" echo     "gui.block_id.source_label": "源方块 (替换)",
>>"%LANG_DIR%\zh_cn.json" echo     "gui.block_id.target_label": "目标方块 (替换为)",
>>"%LANG_DIR%\zh_cn.json" echo     "gui.block_id.copy_mode_label": "多选方块 (复制/Set)",
>>"%LANG_DIR%\zh_cn.json" echo     "gui.block_id.selected_target": "已选源/目标",
>>"%LANG_DIR%\zh_cn.json" echo     "gui.block_id.selected": "已选中",
>>"%LANG_DIR%\zh_cn.json" echo     "gui.block_id.selected_count": "已选方块数量: %%s",
>>"%LANG_DIR%\zh_cn.json" echo     "gui.block_id.set": "复制 (Set)",
>>"%LANG_DIR%\zh_cn.json" echo     "gui.block_id.copy_replace": "复制 (Replace)"
>>"%LANG_DIR%\zh_cn.json" echo }

echo Updating Chinese Traditional (zh_tw)...
> "%LANG_DIR%\zh_tw.json" echo {
>>"%LANG_DIR%\zh_tw.json" echo     "key.block_id.open_gui": "開啟方塊ID管理介面",
>>"%LANG_DIR%\zh_tw.json" echo     "key.block_id.copy_id": "複製方塊ID",
>>"%LANG_DIR%\zh_tw.json" echo     "key.categories.block_id": "方塊ID",
>>"%LANG_DIR%\zh_tw.json" echo     "gui.block_id.title": "方塊ID管理器",
>>"%LANG_DIR%\zh_tw.json" echo     "gui.block_id.search": "搜尋...",
>>"%LANG_DIR%\zh_tw.json" echo     "gui.block_id.switch_to_copy": "切換到複製模式",
>>"%LANG_DIR%\zh_tw.json" echo     "gui.block_id.switch_to_replace": "切換到替換模式",
>>"%LANG_DIR%\zh_tw.json" echo     "gui.block_id.clear_selection": "清空選擇",
>>"%LANG_DIR%\zh_tw.json" echo     "gui.block_id.please_select": "請先選擇方塊！",
>>"%LANG_DIR%\zh_tw.json" echo     "gui.block_id.copied_message": "【Block_ID】指令已複製到剪貼簿！請按 T 鍵貼上發送。",
>>"%LANG_DIR%\zh_tw.json" echo     "gui.block_id.source_label": "源方塊 (替換)",
>>"%LANG_DIR%\zh_tw.json" echo     "gui.block_id.target_label": "目標方塊 (替換為)",
>>"%LANG_DIR%\zh_tw.json" echo     "gui.block_id.copy_mode_label": "多選方塊 (複製/Set)",
>>"%LANG_DIR%\zh_tw.json" echo     "gui.block_id.selected_target": "已選源/目標",
>>"%LANG_DIR%\zh_tw.json" echo     "gui.block_id.selected": "已選中",
>>"%LANG_DIR%\zh_tw.json" echo     "gui.block_id.selected_count": "已選方塊數量: %%s",
>>"%LANG_DIR%\zh_tw.json" echo     "gui.block_id.set": "複製 (Set)",
>>"%LANG_DIR%\zh_tw.json" echo     "gui.block_id.copy_replace": "複製 (Replace)"
>>"%LANG_DIR%\zh_tw.json" echo }

echo Updating German (de_de)...
> "%LANG_DIR%\de_de.json" echo {
>>"%LANG_DIR%\de_de.json" echo     "key.block_id.open_gui": "Block-ID-Verwaltung öffnen",
>>"%LANG_DIR%\de_de.json" echo     "key.block_id.copy_id": "Block-ID kopieren",
>>"%LANG_DIR%\de_de.json" echo     "key.categories.block_id": "Block-ID",
>>"%LANG_DIR%\de_de.json" echo     "gui.block_id.title": "Block-ID-Manager",
>>"%LANG_DIR%\de_de.json" echo     "gui.block_id.search": "Suchen...",
>>"%LANG_DIR%\de_de.json" echo     "gui.block_id.switch_to_copy": "Zum Kopiermodus wechseln",
>>"%LANG_DIR%\de_de.json" echo     "gui.block_id.switch_to_replace": "Zum Ersetzungsmodus wechseln",
>>"%LANG_DIR%\de_de.json" echo     "gui.block_id.clear_selection": "Auswahl löschen",
>>"%LANG_DIR%\de_de.json" echo     "gui.block_id.please_select": "Bitte zuerst Blöcke auswählen!",
>>"%LANG_DIR%\de_de.json" echo     "gui.block_id.copied_message": "【Block_ID】Befehl kopiert! Drücken Sie T zum Einfügen und Senden.",
>>"%LANG_DIR%\de_de.json" echo     "gui.block_id.source_label": "Quelle (Ersetzen)",
>>"%LANG_DIR%\de_de.json" echo     "gui.block_id.target_label": "Ziel (Ersetzen durch)",
>>"%LANG_DIR%\de_de.json" echo     "gui.block_id.copy_mode_label": "Mehrfachauswahl (Kopieren/Set)",
>>"%LANG_DIR%\de_de.json" echo     "gui.block_id.selected_target": "Ausgewählte Quelle/Ziel",
>>"%LANG_DIR%\de_de.json" echo     "gui.block_id.selected": "Ausgewählt",
>>"%LANG_DIR%\de_de.json" echo     "gui.block_id.selected_count": "Ausgewählte Anzahl: %%s",
>>"%LANG_DIR%\de_de.json" echo     "gui.block_id.set": "Kopieren (Set)",
>>"%LANG_DIR%\de_de.json" echo     "gui.block_id.copy_replace": "Kopieren (Replace)"
>>"%LANG_DIR%\de_de.json" echo }

echo Updating Spanish (es_mx)...
> "%LANG_DIR%\es_mx.json" echo {
>>"%LANG_DIR%\es_mx.json" echo     "key.block_id.open_gui": "Abrir interfaz de gestión de ID de bloques",
>>"%LANG_DIR%\es_mx.json" echo     "key.block_id.copy_id": "Copiar ID de bloque",
>>"%LANG_DIR%\es_mx.json" echo     "key.categories.block_id": "ID de bloque",
>>"%LANG_DIR%\es_mx.json" echo     "gui.block_id.title": "Gestor de ID de bloques",
>>"%LANG_DIR%\es_mx.json" echo     "gui.block_id.search": "Buscar...",
>>"%LANG_DIR%\es_mx.json" echo     "gui.block_id.switch_to_copy": "Cambiar a Modo Copiar",
>>"%LANG_DIR%\es_mx.json" echo     "gui.block_id.switch_to_replace": "Cambiar a Modo Reemplazar",
>>"%LANG_DIR%\es_mx.json" echo     "gui.block_id.clear_selection": "Limpiar Selección",
>>"%LANG_DIR%\es_mx.json" echo     "gui.block_id.please_select": "¡Selecciona los bloques primero!",
>>"%LANG_DIR%\es_mx.json" echo     "gui.block_id.copied_message": "【Block_ID】¡Comando copiado! Presiona T para pegar y enviar.",
>>"%LANG_DIR%\es_mx.json" echo     "gui.block_id.source_label": "Fuente (Reemplazar)",
>>"%LANG_DIR%\es_mx.json" echo     "gui.block_id.target_label": "Destino (Reemplazar por)",
>>"%LANG_DIR%\es_mx.json" echo     "gui.block_id.copy_mode_label": "Selección múltiple (Copiar/Set)",
>>"%LANG_DIR%\es_mx.json" echo     "gui.block_id.selected_target": "Fuente/Destino seleccionados",
>>"%LANG_DIR%\es_mx.json" echo     "gui.block_id.selected": "Seleccionado",
>>"%LANG_DIR%\es_mx.json" echo     "gui.block_id.selected_count": "Cantidad seleccionada: %%s",
>>"%LANG_DIR%\es_mx.json" echo     "gui.block_id.set": "Copiar (Set)",
>>"%LANG_DIR%\es_mx.json" echo     "gui.block_id.copy_replace": "Copiar (Replace)"
>>"%LANG_DIR%\es_mx.json" echo }

echo Updating French (fr_fr)...
> "%LANG_DIR%\fr_fr.json" echo {
>>"%LANG_DIR%\fr_fr.json" echo     "key.block_id.open_gui": "Ouvrir l'interface de gestion des ID de blocs",
>>"%LANG_DIR%\fr_fr.json" echo     "key.block_id.copy_id": "Copier l'ID du bloc",
>>"%LANG_DIR%\fr_fr.json" echo     "key.categories.block_id": "ID de bloc",
>>"%LANG_DIR%\fr_fr.json" echo     "gui.block_id.title": "Gestionnaire d'ID de blocs",
>>"%LANG_DIR%\fr_fr.json" echo     "gui.block_id.search": "Rechercher...",
>>"%LANG_DIR%\fr_fr.json" echo     "gui.block_id.switch_to_copy": "Passer en mode Copie",
>>"%LANG_DIR%\fr_fr.json" echo     "gui.block_id.switch_to_replace": "Passer en mode Remplacement",
>>"%LANG_DIR%\fr_fr.json" echo     "gui.block_id.clear_selection": "Effacer la sélection",
>>"%LANG_DIR%\fr_fr.json" echo     "gui.block_id.please_select": "Veuillez d'abord sélectionner des blocs !",
>>"%LANG_DIR%\fr_fr.json" echo     "gui.block_id.copied_message": "【Block_ID】Commande copiée ! Appuyez sur T pour coller et envoyer.",
>>"%LANG_DIR%\fr_fr.json" echo     "gui.block_id.source_label": "Source (Remplacement)",
>>"%LANG_DIR%\fr_fr.json" echo     "gui.block_id.target_label": "Cible (Remplacer par)",
>>"%LANG_DIR%\fr_fr.json" echo     "gui.block_id.copy_mode_label": "Sélection multiple (Copier/Set)",
>>"%LANG_DIR%\fr_fr.json" echo     "gui.block_id.selected_target": "Source/Cible sélectionnées",
>>"%LANG_DIR%\fr_fr.json" echo     "gui.block_id.selected": "Sélectionné",
>>"%LANG_DIR%\fr_fr.json" echo     "gui.block_id.selected_count": "Nombre sélectionné : %%s",
>>"%LANG_DIR%\fr_fr.json" echo     "gui.block_id.set": "Copier (Set)",
>>"%LANG_DIR%\fr_fr.json" echo     "gui.block_id.copy_replace": "Copier (Replace)"
>>"%LANG_DIR%\fr_fr.json" echo }

echo Updating Japanese (ja_jp)...
> "%LANG_DIR%\ja_jp.json" echo {
>>"%LANG_DIR%\ja_jp.json" echo     "key.block_id.open_gui": "ブロックID管理画面を開く",
>>"%LANG_DIR%\ja_jp.json" echo     "key.block_id.copy_id": "ブロックIDをコピー",
>>"%LANG_DIR%\ja_jp.json" echo     "key.categories.block_id": "ブロックID",
>>"%LANG_DIR%\ja_jp.json" echo     "gui.block_id.title": "ブロックIDマネージャー",
>>"%LANG_DIR%\ja_jp.json" echo     "gui.block_id.search": "検索...",
>>"%LANG_DIR%\ja_jp.json" echo     "gui.block_id.switch_to_copy": "コピーモードに切り替え",
>>"%LANG_DIR%\ja_jp.json" echo     "gui.block_id.switch_to_replace": "置換モードに切り替え",
>>"%LANG_DIR%\ja_jp.json" echo     "gui.block_id.clear_selection": "選択をクリア",
>>"%LANG_DIR%\ja_jp.json" echo     "gui.block_id.please_select": "先にブロックを選択してください！",
>>"%LANG_DIR%\ja_jp.json" echo     "gui.block_id.copied_message": "【Block_ID】コマンドをコピーしました！Tキーで貼り付けて送信してください。",
>>"%LANG_DIR%\ja_jp.json" echo     "gui.block_id.source_label": "ソース (置換)",
>>"%LANG_DIR%\ja_jp.json" echo     "gui.block_id.target_label": "ターゲット (置換先)",
>>"%LANG_DIR%\ja_jp.json" echo     "gui.block_id.copy_mode_label": "複数選択 (コピー/Set)",
>>"%LANG_DIR%\ja_jp.json" echo     "gui.block_id.selected_target": "選択したソース/ターゲット",
>>"%LANG_DIR%\ja_jp.json" echo     "gui.block_id.selected": "選択中",
>>"%LANG_DIR%\ja_jp.json" echo     "gui.block_id.selected_count": "選択数: %%s",
>>"%LANG_DIR%\ja_jp.json" echo     "gui.block_id.set": "コピー (Set)",
>>"%LANG_DIR%\ja_jp.json" echo     "gui.block_id.copy_replace": "コピー (Replace)"
>>"%LANG_DIR%\ja_jp.json" echo }

echo Updating Portuguese (pt_br)...
> "%LANG_DIR%\pt_br.json" echo {
>>"%LANG_DIR%\pt_br.json" echo     "key.block_id.open_gui": "Abrir interface de gerenciamento de IDs de blocos",
>>"%LANG_DIR%\pt_br.json" echo     "key.block_id.copy_id": "Copiar ID do bloco",
>>"%LANG_DIR%\pt_br.json" echo     "key.categories.block_id": "ID do bloco",
>>"%LANG_DIR%\pt_br.json" echo     "gui.block_id.title": "Gerenciador de IDs de blocos",
>>"%LANG_DIR%\pt_br.json" echo     "gui.block_id.search": "Pesquisar...",
>>"%LANG_DIR%\pt_br.json" echo     "gui.block_id.switch_to_copy": "Mudar para Modo Copiar",
>>"%LANG_DIR%\pt_br.json" echo     "gui.block_id.switch_to_replace": "Mudar para Modo Substituir",
>>"%LANG_DIR%\pt_br.json" echo     "gui.block_id.clear_selection": "Limpar Seleção",
>>"%LANG_DIR%\pt_br.json" echo     "gui.block_id.please_select": "Selecione os blocos primeiro!",
>>"%LANG_DIR%\pt_br.json" echo     "gui.block_id.copied_message": "【Block_ID】Comando copiado! Pressione T para colar e enviar.",
>>"%LANG_DIR%\pt_br.json" echo     "gui.block_id.source_label": "Fonte (Substituir)",
>>"%LANG_DIR%\pt_br.json" echo     "gui.block_id.target_label": "Destino (Substituir por)",
>>"%LANG_DIR%\pt_br.json" echo     "gui.block_id.copy_mode_label": "Seleção múltipla (Copiar/Set)",
>>"%LANG_DIR%\pt_br.json" echo     "gui.block_id.selected_target": "Fonte/Destino selecionados",
>>"%LANG_DIR%\pt_br.json" echo     "gui.block_id.selected": "Selecionado",
>>"%LANG_DIR%\pt_br.json" echo     "gui.block_id.selected_count": "Quantidade selecionada: %%s",
>>"%LANG_DIR%\pt_br.json" echo     "gui.block_id.set": "Copiar (Set)",
>>"%LANG_DIR%\pt_br.json" echo     "gui.block_id.copy_replace": "Copiar (Replace)"
>>"%LANG_DIR%\pt_br.json" echo }

echo Updating Russian (ru_ru)...
> "%LANG_DIR%\ru_ru.json" echo {
>>"%LANG_DIR%\ru_ru.json" echo     "key.block_id.open_gui": "Открыть интерфейс управления ID блоков",
>>"%LANG_DIR%\ru_ru.json" echo     "key.block_id.copy_id": "Скопировать ID блока",
>>"%LANG_DIR%\ru_ru.json" echo     "key.categories.block_id": "ID блока",
>>"%LANG_DIR%\ru_ru.json" echo     "gui.block_id.title": "Менеджер ID блоков",
>>"%LANG_DIR%\ru_ru.json" echo     "gui.block_id.search": "Поиск...",
>>"%LANG_DIR%\ru_ru.json" echo     "gui.block_id.switch_to_copy": "Переключиться в режим копирования",
>>"%LANG_DIR%\ru_ru.json" echo     "gui.block_id.switch_to_replace": "Переключиться в режим замены",
>>"%LANG_DIR%\ru_ru.json" echo     "gui.block_id.clear_selection": "Очистить выбор",
>>"%LANG_DIR%\ru_ru.json" echo     "gui.block_id.please_select": "Сначала выберите блоки!",
>>"%LANG_DIR%\ru_ru.json" echo     "gui.block_id.copied_message": "【Block_ID】Команда скопирована! Нажмите T для вставки и отправки.",
>>"%LANG_DIR%\ru_ru.json" echo     "gui.block_id.source_label": "Источник (Заменить)",
>>"%LANG_DIR%\ru_ru.json" echo     "gui.block_id.target_label": "Цель (Заменить на)",
>>"%LANG_DIR%\ru_ru.json" echo     "gui.block_id.copy_mode_label": "Множественный выбор (Копировать/Set)",
>>"%LANG_DIR%\ru_ru.json" echo     "gui.block_id.selected_target": "Выбранные источник/цель",
>>"%LANG_DIR%\ru_ru.json" echo     "gui.block_id.selected": "Выбрано",
>>"%LANG_DIR%\ru_ru.json" echo     "gui.block_id.selected_count": "Выбрано: %%s",
>>"%LANG_DIR%\ru_ru.json" echo     "gui.block_id.set": "Копировать (Set)",
>>"%LANG_DIR%\ru_ru.json" echo     "gui.block_id.copy_replace": "Копировать (Replace)"
>>"%LANG_DIR%\ru_ru.json" echo }

echo.
echo All 9 translations updated successfully!
pause