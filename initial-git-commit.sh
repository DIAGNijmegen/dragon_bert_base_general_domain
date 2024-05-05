git init
git add --chmod=+x -- build.sh export.sh train-test.sh
git add -A
git commit -m "Initial release"
git remote add origin https://github.com/DIAGNijmegen/dragon_bert_base_general_domain
git push -u origin main
gh repo edit https://github.com/DIAGNijmegen/dragon_bert_base_general_domain --description "DRAGON BERT Base General-domain"
