unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, Menus;

type

  { TForm_base }

  TForm_base = class(TForm)
    Button_ce: TButton;
    Button_c: TButton;
    Button_del: TButton;
    Button_percent: TButton;
    Button_squaring: TButton;
    Button_sqrt: TButton;
    Button_division: TButton;
    Button_multipl: TButton;
    Button_diff: TButton;
    Button_sum: TButton;
    Button_equally: TButton;
    Button_1: TButton;
    Button_changing_sign: TButton;
    Button_0: TButton;
    Button_dot: TButton;
    Button_2: TButton;
    Button_3: TButton;
    Button_4: TButton;
    Button_5: TButton;
    Button_6: TButton;
    Button_7: TButton;
    Button_8: TButton;
    Button_9: TButton;
    Edit1: TEdit;
    MainMenu1: TMainMenu;
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
    procedure ButtonClick(Sender: TObject);
    procedure Button_cClick(Sender: TObject);
    procedure Button_ceClick(Sender: TObject);
    procedure Button_changing_signClick(Sender: TObject);
    procedure Button_delClick(Sender: TObject);
    procedure Button_dotClick(Sender: TObject);
    procedure Button_equallyClick(Sender: TObject);
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
  if Edit1.Text = '0' then Edit1.Text:=(Sender as TButton).Caption
  else Edit1.Text:=Edit1.Text + (Sender as TButton).Caption;
  //x:=strtofloat(Edit1.Text);
end;

procedure TForm_base.Button_sumClick(Sender: TObject);
begin
  if Edit1.Text<>'' then begin
                          x:= StrToFloat(Edit1.Text);//забрать первое значение
                          Edit1.Clear;
                          sign:=(Sender as TButton).Caption;
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
                              '/': z:=x/y;
                              'abs':z:=x;
                            end;
                            Edit1.Text:=FloatToStr(z);
                        end;
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

