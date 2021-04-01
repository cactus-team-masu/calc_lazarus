unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, Menus,
  Buttons;

type

  { TForm_base }

  TForm_base = class(TForm)
    Button_dot: TSpeedButton;
    Button_changing_sign: TSpeedButton;
    Button_ce: TSpeedButton;
    Button_c: TSpeedButton;
    Button_del: TSpeedButton;
    Button_division: TSpeedButton;
    Button_multipl: TSpeedButton;
    Button_diff: TSpeedButton;
    Button_sum: TSpeedButton;
    Button_equally: TSpeedButton;
    Edit1: TEdit;
    MainMenu1: TMainMenu;
    Menu_theme_3: TMenuItem;
    Menu_theme_2: TMenuItem;
    Menu_theme_1: TMenuItem;
    Menu_themes: TMenuItem;
    Menu_base: TMenuItem;
    Menu_engin: TMenuItem;
    Menu_rus: TMenuItem;
    Menu_eng: TMenuItem;
    Menu_1_calc: TMenuItem;
    Menu_2_mode: TMenuItem;
    Menu_3_help: TMenuItem;
    Menu_1_1_copy: TMenuItem;
    Menu_1_2_paste: TMenuItem;
    Menu_2_1_base: TMenuItem;
    Menu_2_2_lang: TMenuItem;
    Menu_3_1_help: TMenuItem;
    Menu_3_2_about: TMenuItem;
    Button_0: TSpeedButton;
    Button_2: TSpeedButton;
    Button_3: TSpeedButton;
    Button_4: TSpeedButton;
    Button_5: TSpeedButton;
    Button_6: TSpeedButton;
    Button_7: TSpeedButton;
    Button_8: TSpeedButton;
    Button_9: TSpeedButton;
    Button_percent: TSpeedButton;
    Button_1: TSpeedButton;
    Button_squaring: TSpeedButton;
    Button_sqrt: TSpeedButton;
    procedure ButtonClick(Sender: TObject);
    procedure Button_cClick(Sender: TObject);
    procedure Button_ceClick(Sender: TObject);
    procedure Button_changing_signClick(Sender: TObject);
    procedure Button_delClick(Sender: TObject);
    procedure Button_dotClick(Sender: TObject);
    procedure Button_equallyClick(Sender: TObject);
    procedure Button_percent1Click(Sender: TObject);
    procedure Button_percentClick(Sender: TObject);
    procedure Button_sqrtClick(Sender: TObject);
    procedure Button_squaringClick(Sender: TObject);
    procedure Button_sumClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Menu_1_1_copyClick(Sender: TObject);
    procedure Menu_enginClick(Sender: TObject);
  private

  public

  end;

var
  Form_base: TForm_base;
  x,y,z,a:real;
  sign:string;

implementation
{$R *.lfm}
 uses Unit2;
{ TForm_base }

procedure TForm_base.FormCreate(Sender: TObject);
begin

end;

procedure TForm_base.Menu_1_1_copyClick(Sender: TObject);
begin

end;



procedure TForm_base.Menu_enginClick(Sender: TObject);
begin
  Form_base.Hide;
  Form_engin.Show;
end;

procedure TForm_base.ButtonClick(Sender: TObject);    //кнопки цифр
begin
  if Edit1.Text = '0' then Edit1.Text:=(Sender as TSpeedButton).Caption
  else Edit1.Text:=Edit1.Text + (Sender as TSpeedButton).Caption;
  //x:=strtofloat(Edit1.Text);
end;

procedure TForm_base.Button_sumClick(Sender: TObject);
begin
  if Edit1.Text<>'' then begin
                          x:= StrToFloat(Edit1.Text);//забрать первое значение
                          Edit1.Clear;
                          sign:=(Sender as TSpeedButton).Caption;
                        end;
end;

procedure TForm_base.Button_equallyClick(Sender: TObject);
begin
  if Edit1.Text<>'' then begin
                            y:= StrToFloat(Edit1.Text);//забрать второе значение
                            Edit1.Clear;
                            case sign of
                              '+': z:=x+y;
                              '-': z:=x-y;
                              '*': z:=x*y;
                              '/': if y<>0 then z:=x/y else Label1.Caption := 'No';
                            end;
                            Edit1.Text:=FloatToStr(z);
                        end;
end;

procedure TForm_base.Button_percent1Click(Sender: TObject);
begin

end;

procedure TForm_base.Button_percentClick(Sender: TObject);
begin
  y:=strtofloat(Edit1.Text);
  z:=x/100*y;
  Edit1.Text:=floattostr(z);
end;

procedure TForm_base.Button_cClick(Sender: TObject);
begin
  Edit1.Clear;
  x:=0;y:=0;z:=0;
end;

procedure TForm_base.Button_ceClick(Sender: TObject);
begin
  Edit1.Clear;
end;

procedure TForm_base.Button_changing_signClick(Sender: TObject);
begin
  x:=strtofloat(Edit1.Text);
  x:=-x;
  Edit1.Text:=floattostr(x);
end;

procedure TForm_base.Button_delClick(Sender: TObject);
var l:byte;
    s:string;
begin
    s:=Edit1.Text;
    l:=length(s);
    delete(s,l,1);
    Edit1.Text:=s;
end;

procedure TForm_base.Button_dotClick(Sender: TObject);
begin
  if pos('.',Edit1.Text)=0 then Edit1.Text:=Edit1.Text + (Sender as TButton).Caption;
end;

procedure TForm_base.Button_sqrtClick(Sender: TObject);
begin
  x:=strtofloat(Edit1.Text);
  x:=sqrt(x);
  Edit1.Text:=floattostr(x);
end;

procedure TForm_base.Button_squaringClick(Sender: TObject);
begin
  x:=strtofloat(Edit1.Text);
  x:=sqr(x);
  Edit1.Text:=floattostr(x);
end;

end.

