unit Unit2;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, Menus,
  Buttons, Math;

type

  { TForm_engin }

  TForm_engin = class(TForm)
    Button_0: TSpeedButton;
    Button_cos: TSpeedButton;
    Button_s2: TSpeedButton;
    Button_s3: TSpeedButton;
    Button_s10: TSpeedButton;
    Button_sin: TSpeedButton;
    Button_tg: TSpeedButton;
    Button_ctg: TSpeedButton;
    Button_ln_e: TSpeedButton;
    Button_ln_10: TSpeedButton;
    Button_factorial: TSpeedButton;
    Button_stepen: TSpeedButton;
    Button_del: TSpeedButton;
    Button_ce: TSpeedButton;
    Button_c: TSpeedButton;
    Button_abs: TSpeedButton;
    Button_multipl: TSpeedButton;
    Button_dot: TSpeedButton;
    Button_changing_sign: TSpeedButton;
    Button_2: TSpeedButton;
    Button_3: TSpeedButton;
    Button_4: TSpeedButton;
    Button_5: TSpeedButton;
    Button_6: TSpeedButton;
    Button_7: TSpeedButton;
    Button_8: TSpeedButton;
    Button_9: TSpeedButton;
    Button_diff: TSpeedButton;
    Button_percent: TSpeedButton;
    Button_sum: TSpeedButton;
    Button_equally: TSpeedButton;
    Button_division: TSpeedButton;
    Edit1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    MainMenu1: TMainMenu;
    M_theme_3: TMenuItem;
    M_theme_2: TMenuItem;
    M_theme_1: TMenuItem;
    Menu_themes: TMenuItem;
    M_1_calc: TMenuItem;
    M_rus: TMenuItem;
    M_eng: TMenuItem;
    M_3_1_help: TMenuItem;
    M_3_1_about: TMenuItem;
    M_2_mode: TMenuItem;
    M_3_help: TMenuItem;
    M_1_copy: TMenuItem;
    M_1_paste: TMenuItem;
    M_2_type: TMenuItem;
    M_2_lang: TMenuItem;
    M_base: TMenuItem;
    M_engin: TMenuItem;
    Button_squaring: TSpeedButton;
    Button_1: TSpeedButton;
    Button_sqrt: TSpeedButton;
    procedure ButtonClick(Sender: TObject);
    procedure Button_absClick(Sender: TObject);
    procedure Button_cClick(Sender: TObject);
    procedure Button_ceClick(Sender: TObject);
    procedure Button_changing_signClick(Sender: TObject);
    procedure Button_cosClick(Sender: TObject);
    procedure Button_ctgClick(Sender: TObject);
    procedure Button_delClick(Sender: TObject);
    procedure Button_dotClick(Sender: TObject);
    procedure Button_equallyClick(Sender: TObject);
    procedure Button_factorialClick(Sender: TObject);
    procedure Button_ln_10Click(Sender: TObject);
    procedure Button_ln_eClick(Sender: TObject);
    procedure Button_percentClick(Sender: TObject);
    procedure Button_s2Click(Sender: TObject);
    procedure Button_sinClick(Sender: TObject);
    procedure Button_sqrtClick(Sender: TObject);
    procedure Button_squaringClick(Sender: TObject);
    procedure Button_stepenClick(Sender: TObject);
    procedure Button_sumClick(Sender: TObject);
    procedure Button_tgClick(Sender: TObject);
    procedure M_baseClick(Sender: TObject);




  private

  public

  end;

var
  Form_engin: TForm_engin;
  x,y,z,a:real;
  sign:string;


implementation
 uses Unit1;
{$R *.lfm}

{ TForm_engin }

procedure TForm_engin.ButtonClick(Sender: TObject);
begin
  if Edit1.Text = '0' then Edit1.Text:=(Sender as TSpeedButton).Caption
  else Edit1.Text:=Edit1.Text + (Sender as TSpeedButton).Caption;
end;

procedure TForm_engin.Button_absClick(Sender: TObject);
begin
  x:= StrToFloat(Edit1.Text);
  z:=abs(x);
  Edit1.Text:=FloatToStr(z);
end;

procedure TForm_engin.Button_sumClick(Sender: TObject);
begin
  if Edit1.Text<>'' then begin
                          x:= StrToFloat(Edit1.Text);//забрать первое значение
                          Edit1.Clear;
                          sign:=(Sender as TSpeedButton).Caption;
                        end;
end;

procedure TForm_engin.Button_tgClick(Sender: TObject);
begin
  x:=strtofloat(Edit1.Text);    //принимаем в градусах
  if x <> 90 then begin
                    x:=DegToRad(x); //перевод в радианы
                    z:=Tan(x);
                    Edit1.Text:=floattostr(z);
                  end
  else Label1.Caption := 'No';
end;

procedure TForm_engin.M_baseClick(Sender: TObject);
begin
  Form_base.Show;
  Form_engin.Hide;
end;



procedure TForm_engin.Button_equallyClick(Sender: TObject);
begin
  if (Edit1.Text<>'') and (y <> null) then begin
                            y:= StrToFloat(Edit1.Text);//забрать второе значение
                            Edit1.Clear;
                            case sign of
                              '+': z:=x+y;
                              '-': z:=x-y;
                              '*': z:=x*y;
                              '/': if y<>0 then z:=x/y else Label1.Caption := 'No';
                              'x^y': z:=Power(x,y);
                            end;
                            Edit1.Text:=FloatToStr(z);
                        end;
end;

procedure TForm_engin.Button_cClick(Sender: TObject);
begin
  Edit1.Clear;
  x:=0;y:=0;z:=0;
  Label1.Caption := '';
end;

procedure TForm_engin.Button_ceClick(Sender: TObject);
begin
  Edit1.Clear;
  Label1.Caption := '';
end;

procedure TForm_engin.Button_changing_signClick(Sender: TObject);
begin
  x:=strtofloat(Edit1.Text);
  x:=-x;
  Edit1.Text:=floattostr(x);
end;

procedure TForm_engin.Button_cosClick(Sender: TObject);
begin
  x:=strtofloat(Edit1.Text);    //принимаем в градусах
  x:=DegToRad(x); //перевод в радианы
  z:=Cos(x);
  Edit1.Text:=floattostr(z);
end;

procedure TForm_engin.Button_ctgClick(Sender: TObject);
begin
  x:=strtofloat(Edit1.Text);    //принимаем в градусах
  x:=DegToRad(x); //перевод в радианы
  z:=Cot(x);
  Edit1.Text:=floattostr(z);
end;

procedure TForm_engin.Button_delClick(Sender: TObject);
var l:byte;
    s:string;
begin
    s:=Edit1.Text;
    l:=length(s);
    delete(s,l,1);
    Edit1.Text:=s;
end;

procedure TForm_engin.Button_dotClick(Sender: TObject);
begin
  if pos('.',Edit1.Text)=0 then Edit1.Text:=Edit1.Text + (Sender as TSpeedButton).Caption;
end;

function Factorial(n: integer): integer;
begin
  if n = 0 then Exit(1)
  else if n > 0 then Exit(n * Factorial(n - 1));
end;

procedure TForm_engin.Button_factorialClick(Sender: TObject);
var i,k:integer;
begin
  i:=StrToInt(Edit1.Text);
  k:=Factorial(i);
  Edit1.Text:=IntToStr(k);
  x:=strtofloat(Edit1.Text);
end;

procedure TForm_engin.Button_ln_10Click(Sender: TObject);
begin
  x:=strtofloat(Edit1.Text);
  x:=ln(x)/ln(10);
  Edit1.Text:=floattostr(x);
end;

procedure TForm_engin.Button_ln_eClick(Sender: TObject);
begin
  x:=strtofloat(Edit1.Text);
  x:=ln(x);
  Edit1.Text:=floattostr(x);
end;

procedure TForm_engin.Button_percentClick(Sender: TObject);
begin
  y:=strtofloat(Edit1.Text);
  z:=x/100*y;
  Edit1.Text:=floattostr(z);
  x:=strtofloat(Edit1.Text);
end;

procedure TForm_engin.Button_s2Click(Sender: TObject);
begin

end;

procedure TForm_engin.Button_sinClick(Sender: TObject);
begin
  x:=strtofloat(Edit1.Text);    //принимаем в градусах
  x:=DegToRad(x); //перевод в радианы
  z:=Sin(x);
  Edit1.Text:=floattostr(z);
end;

procedure TForm_engin.Button_sqrtClick(Sender: TObject);
begin
  x:=strtofloat(Edit1.Text);
  x:=sqrt(x);
  Edit1.Text:=floattostr(x);
end;

procedure TForm_engin.Button_squaringClick(Sender: TObject);
begin
  x:=strtofloat(Edit1.Text);
  x:=sqr(x);
  Edit1.Text:=floattostr(x);
end;

procedure TForm_engin.Button_stepenClick(Sender: TObject);
begin
    if Edit1.Text<>'' then begin
                          x:= StrToFloat(Edit1.Text);//забрать первое значение
                          Edit1.Clear;
                          sign:=(Sender as TSpeedButton).Caption;
                        end;
end;


{ TForm_engin }



end.

