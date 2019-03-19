map T :tabnew chrome://newtab<CR>
map .i :tabnew chrome://settings<CR>
map .f :tabnew chrome://flags<CR>
map .gs :tabnew gist.github.com<CR>
map .gi :tabnew github.com/raajeshmani<CR>
map .was :tabnew web.whatsapp.com<CR>

map ,i :tabnew intranet.cb.amrita.edu/<CR>
map ,a :tabnew https://amritavidya.amrita.edu:8444/aums/Jsp/Core_Common/index.jsp<CR>
map ,c :tabnew cms.amritanet.edu<CR>
map ,f :tabnew ftp://ftp.amritanet.edu<CR>

map d scrollDown
map D scrollPageDown
map S scrollPageUp
map s scrollUp
map q previousTab
map w nextTab
map b :duplicate<CR>
map c goBack
map v goForward
let autohidecursor="true"
let typelinkhintsdelay=100

#Configuration of CSS to Resemble Saka Key :)

.cVim-link-hint {
  position: absolute;
  color: #3F51F5 !important;
  background-color: #FFFFFF !important;
  border-radius: 2px !important;
  padding: 2px !important;
  font-size: 9pt !important;
  font-weight: 900 !important;
  text-transform: uppercase !important;
  border: 1px solid #FFFFFF;
  display: inline-block !important;
  vertical-align: middle !important;
  text-align: center !important;
  box-shadow: 2px 2px 1px rgba(0,0,0,0.25) !important;
}
