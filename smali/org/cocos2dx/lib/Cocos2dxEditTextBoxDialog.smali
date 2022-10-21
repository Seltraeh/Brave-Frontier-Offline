.class public Lorg/cocos2dx/lib/Cocos2dxEditTextBoxDialog;
.super Landroid/app/Dialog;
.source "Cocos2dxEditTextBoxDialog.java"


# instance fields
.field private final kEditBoxInputFlagInitialCapsAllCharacters:I

.field private final kEditBoxInputFlagInitialCapsSentence:I

.field private final kEditBoxInputFlagInitialCapsWord:I

.field private final kEditBoxInputFlagPassword:I

.field private final kEditBoxInputFlagSensitive:I

.field private final kEditBoxInputModeAny:I

.field private final kEditBoxInputModeDecimal:I

.field private final kEditBoxInputModeEmailAddr:I

.field private final kEditBoxInputModeNumeric:I

.field private final kEditBoxInputModePhoneNumber:I

.field private final kEditBoxInputModeSingleLine:I

.field private final kEditBoxInputModeUrl:I

.field private final kKeyboardReturnTypeDefault:I

.field private final kKeyboardReturnTypeDone:I

.field private final kKeyboardReturnTypeGo:I

.field private final kKeyboardReturnTypeSearch:I

.field private final kKeyboardReturnTypeSend:I

.field private mInputEditText:Landroid/widget/EditText;

.field private final mInputFlag:I

.field private mInputFlagConstraints:I

.field private final mInputMode:I

.field private mInputModeContraints:I

.field private mIsMultiline:Z

.field private final mMaxLength:I

.field private final mMessage:Ljava/lang/String;

.field private final mReturnType:I

.field private final mTitle:Ljava/lang/String;

.field private final mXywh:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIII[I)V
    .locals 5

    const v0, 0x1030011

    .line 145
    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 p1, 0x0

    .line 59
    iput p1, p0, Lorg/cocos2dx/lib/Cocos2dxEditTextBoxDialog;->kEditBoxInputModeAny:I

    const/4 v0, 0x1

    .line 64
    iput v0, p0, Lorg/cocos2dx/lib/Cocos2dxEditTextBoxDialog;->kEditBoxInputModeEmailAddr:I

    const/4 v1, 0x2

    .line 69
    iput v1, p0, Lorg/cocos2dx/lib/Cocos2dxEditTextBoxDialog;->kEditBoxInputModeNumeric:I

    const/4 v2, 0x3

    .line 74
    iput v2, p0, Lorg/cocos2dx/lib/Cocos2dxEditTextBoxDialog;->kEditBoxInputModePhoneNumber:I

    const/4 v3, 0x4

    .line 79
    iput v3, p0, Lorg/cocos2dx/lib/Cocos2dxEditTextBoxDialog;->kEditBoxInputModeUrl:I

    const/4 v4, 0x5

    .line 84
    iput v4, p0, Lorg/cocos2dx/lib/Cocos2dxEditTextBoxDialog;->kEditBoxInputModeDecimal:I

    const/4 v4, 0x6

    .line 89
    iput v4, p0, Lorg/cocos2dx/lib/Cocos2dxEditTextBoxDialog;->kEditBoxInputModeSingleLine:I

    .line 94
    iput p1, p0, Lorg/cocos2dx/lib/Cocos2dxEditTextBoxDialog;->kEditBoxInputFlagPassword:I

    .line 99
    iput v0, p0, Lorg/cocos2dx/lib/Cocos2dxEditTextBoxDialog;->kEditBoxInputFlagSensitive:I

    .line 104
    iput v1, p0, Lorg/cocos2dx/lib/Cocos2dxEditTextBoxDialog;->kEditBoxInputFlagInitialCapsWord:I

    .line 109
    iput v2, p0, Lorg/cocos2dx/lib/Cocos2dxEditTextBoxDialog;->kEditBoxInputFlagInitialCapsSentence:I

    .line 114
    iput v3, p0, Lorg/cocos2dx/lib/Cocos2dxEditTextBoxDialog;->kEditBoxInputFlagInitialCapsAllCharacters:I

    .line 116
    iput p1, p0, Lorg/cocos2dx/lib/Cocos2dxEditTextBoxDialog;->kKeyboardReturnTypeDefault:I

    .line 117
    iput v0, p0, Lorg/cocos2dx/lib/Cocos2dxEditTextBoxDialog;->kKeyboardReturnTypeDone:I

    .line 118
    iput v1, p0, Lorg/cocos2dx/lib/Cocos2dxEditTextBoxDialog;->kKeyboardReturnTypeSend:I

    .line 119
    iput v2, p0, Lorg/cocos2dx/lib/Cocos2dxEditTextBoxDialog;->kKeyboardReturnTypeSearch:I

    .line 120
    iput v3, p0, Lorg/cocos2dx/lib/Cocos2dxEditTextBoxDialog;->kKeyboardReturnTypeGo:I

    .line 148
    iput-object p2, p0, Lorg/cocos2dx/lib/Cocos2dxEditTextBoxDialog;->mTitle:Ljava/lang/String;

    .line 149
    iput-object p3, p0, Lorg/cocos2dx/lib/Cocos2dxEditTextBoxDialog;->mMessage:Ljava/lang/String;

    .line 150
    iput p4, p0, Lorg/cocos2dx/lib/Cocos2dxEditTextBoxDialog;->mInputMode:I

    .line 151
    iput p5, p0, Lorg/cocos2dx/lib/Cocos2dxEditTextBoxDialog;->mInputFlag:I

    .line 152
    iput p6, p0, Lorg/cocos2dx/lib/Cocos2dxEditTextBoxDialog;->mReturnType:I

    .line 153
    iput p7, p0, Lorg/cocos2dx/lib/Cocos2dxEditTextBoxDialog;->mMaxLength:I

    .line 154
    iput-object p8, p0, Lorg/cocos2dx/lib/Cocos2dxEditTextBoxDialog;->mXywh:[I

    return-void
.end method

.method static synthetic access$000(Lorg/cocos2dx/lib/Cocos2dxEditTextBoxDialog;)[I
    .locals 0

    .line 51
    iget-object p0, p0, Lorg/cocos2dx/lib/Cocos2dxEditTextBoxDialog;->mXywh:[I

    return-object p0
.end method

.method static synthetic access$100(Lorg/cocos2dx/lib/Cocos2dxEditTextBoxDialog;)Landroid/widget/EditText;
    .locals 0

    .line 51
    iget-object p0, p0, Lorg/cocos2dx/lib/Cocos2dxEditTextBoxDialog;->mInputEditText:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$200(Lorg/cocos2dx/lib/Cocos2dxEditTextBoxDialog;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Lorg/cocos2dx/lib/Cocos2dxEditTextBoxDialog;->openKeyboard()V

    return-void
.end method

.method static synthetic access$300(Lorg/cocos2dx/lib/Cocos2dxEditTextBoxDialog;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Lorg/cocos2dx/lib/Cocos2dxEditTextBoxDialog;->closeKeyboard()V

    return-void
.end method

.method private closeKeyboard()V
    .locals 3

    .line 346
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 347
    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxEditTextBoxDialog;->mInputEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method

.method private convertDipsToPixels(F)I
    .locals 1

    .line 336
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float p1, p1, v0

    .line 337
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    return p1
.end method

.method private openKeyboard()V
    .locals 3

    .line 341
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 342
    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxEditTextBoxDialog;->mInputEditText:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12

    .line 159
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 161
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v1, 0x800000

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 163
    new-instance p1, Lorg/cocos2dx/lib/Cocos2dxEditTextBoxDialogLayout;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Lorg/cocos2dx/lib/Cocos2dxEditTextBoxDialogLayout;-><init>(Landroid/content/Context;Landroid/app/Dialog;)V

    const/4 v0, 0x1

    .line 164
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v1, 0x50

    .line 165
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 167
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 172
    iget-object v3, p0, Lorg/cocos2dx/lib/Cocos2dxEditTextBoxDialog;->mXywh:[I

    const/4 v4, 0x0

    aget v5, v3, v4

    int-to-float v5, v5

    const/4 v6, 0x2

    aget v7, v3, v6

    int-to-float v7, v7

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    sub-float/2addr v5, v7

    .line 173
    aget v7, v3, v0

    int-to-float v7, v7

    const/high16 v9, 0x43f00000    # 480.0f

    sub-float v7, v9, v7

    const/4 v10, 0x3

    aget v3, v3, v10

    int-to-float v3, v3

    div-float/2addr v3, v8

    sub-float/2addr v7, v3

    .line 175
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v3, v3

    const/high16 v8, 0x43a00000    # 320.0f

    div-float/2addr v3, v8

    .line 176
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v8, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v8, v8

    div-float/2addr v8, v9

    .line 178
    new-instance v9, Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v9, v11}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lorg/cocos2dx/lib/Cocos2dxEditTextBoxDialog;->mInputEditText:Landroid/widget/EditText;

    .line 179
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v11, -0x2

    invoke-direct {v9, v2, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    mul-float v2, v5, v3

    float-to-int v2, v2

    .line 180
    iput v2, v9, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    mul-float v7, v7, v8

    float-to-int v2, v7

    .line 181
    iput v2, v9, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 182
    iget-object v2, p0, Lorg/cocos2dx/lib/Cocos2dxEditTextBoxDialog;->mXywh:[I

    aget v7, v2, v6

    int-to-float v7, v7

    mul-float v7, v7, v3

    float-to-int v7, v7

    iput v7, v9, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 183
    aget v2, v2, v10

    int-to-float v2, v2

    mul-float v2, v2, v8

    float-to-int v2, v2

    iput v2, v9, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 188
    iget-object v2, p0, Lorg/cocos2dx/lib/Cocos2dxEditTextBoxDialog;->mInputEditText:Landroid/widget/EditText;

    invoke-virtual {p1, v2, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 194
    invoke-virtual {p0, p1, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 196
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v1, 0x400

    invoke-virtual {p1, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 200
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v1, 0x10

    invoke-virtual {p1, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 202
    iget-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxEditTextBoxDialog;->mInputEditText:Landroid/widget/EditText;

    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxEditTextBoxDialog;->mMessage:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 204
    iget-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxEditTextBoxDialog;->mInputEditText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getImeOptions()I

    move-result p1

    .line 205
    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxEditTextBoxDialog;->mInputEditText:Landroid/widget/EditText;

    const/high16 v2, 0x10000000

    or-int/2addr p1, v2

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 206
    iget-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxEditTextBoxDialog;->mInputEditText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getImeOptions()I

    move-result p1

    .line 208
    iget v1, p0, Lorg/cocos2dx/lib/Cocos2dxEditTextBoxDialog;->mInputMode:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 228
    :pswitch_0
    iput v0, p0, Lorg/cocos2dx/lib/Cocos2dxEditTextBoxDialog;->mInputModeContraints:I

    goto :goto_0

    :pswitch_1
    const/16 v1, 0x3002

    .line 225
    iput v1, p0, Lorg/cocos2dx/lib/Cocos2dxEditTextBoxDialog;->mInputModeContraints:I

    goto :goto_0

    :pswitch_2
    const/16 v1, 0x11

    .line 222
    iput v1, p0, Lorg/cocos2dx/lib/Cocos2dxEditTextBoxDialog;->mInputModeContraints:I

    goto :goto_0

    .line 219
    :pswitch_3
    iput v10, p0, Lorg/cocos2dx/lib/Cocos2dxEditTextBoxDialog;->mInputModeContraints:I

    goto :goto_0

    :pswitch_4
    const/16 v1, 0x1002

    .line 216
    iput v1, p0, Lorg/cocos2dx/lib/Cocos2dxEditTextBoxDialog;->mInputModeContraints:I

    goto :goto_0

    :pswitch_5
    const/16 v1, 0x21

    .line 213
    iput v1, p0, Lorg/cocos2dx/lib/Cocos2dxEditTextBoxDialog;->mInputModeContraints:I

    goto :goto_0

    :pswitch_6
    const v1, 0x20001

    .line 210
    iput v1, p0, Lorg/cocos2dx/lib/Cocos2dxEditTextBoxDialog;->mInputModeContraints:I

    .line 235
    :goto_0
    iget-boolean v1, p0, Lorg/cocos2dx/lib/Cocos2dxEditTextBoxDialog;->mIsMultiline:Z

    if-eqz v1, :cond_0

    .line 236
    iget v1, p0, Lorg/cocos2dx/lib/Cocos2dxEditTextBoxDialog;->mInputModeContraints:I

    const/high16 v2, 0x20000

    or-int/2addr v1, v2

    iput v1, p0, Lorg/cocos2dx/lib/Cocos2dxEditTextBoxDialog;->mInputModeContraints:I

    .line 239
    :cond_0
    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxEditTextBoxDialog;->mInputEditText:Landroid/widget/EditText;

    iget v2, p0, Lorg/cocos2dx/lib/Cocos2dxEditTextBoxDialog;->mInputModeContraints:I

    iget v7, p0, Lorg/cocos2dx/lib/Cocos2dxEditTextBoxDialog;->mInputFlagConstraints:I

    or-int/2addr v2, v7

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setInputType(I)V

    .line 241
    iget v1, p0, Lorg/cocos2dx/lib/Cocos2dxEditTextBoxDialog;->mInputFlag:I

    const/4 v2, 0x4

    if-eqz v1, :cond_5

    if-eq v1, v0, :cond_4

    if-eq v1, v6, :cond_3

    if-eq v1, v10, :cond_2

    if-eq v1, v2, :cond_1

    goto :goto_1

    :cond_1
    const/16 v1, 0x1000

    .line 255
    iput v1, p0, Lorg/cocos2dx/lib/Cocos2dxEditTextBoxDialog;->mInputFlagConstraints:I

    goto :goto_1

    :cond_2
    const/16 v1, 0x4000

    .line 252
    iput v1, p0, Lorg/cocos2dx/lib/Cocos2dxEditTextBoxDialog;->mInputFlagConstraints:I

    goto :goto_1

    :cond_3
    const/16 v1, 0x2000

    .line 249
    iput v1, p0, Lorg/cocos2dx/lib/Cocos2dxEditTextBoxDialog;->mInputFlagConstraints:I

    goto :goto_1

    :cond_4
    const/high16 v1, 0x80000

    .line 246
    iput v1, p0, Lorg/cocos2dx/lib/Cocos2dxEditTextBoxDialog;->mInputFlagConstraints:I

    goto :goto_1

    :cond_5
    const/16 v1, 0x81

    .line 243
    iput v1, p0, Lorg/cocos2dx/lib/Cocos2dxEditTextBoxDialog;->mInputFlagConstraints:I

    .line 261
    :goto_1
    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxEditTextBoxDialog;->mInputEditText:Landroid/widget/EditText;

    iget v7, p0, Lorg/cocos2dx/lib/Cocos2dxEditTextBoxDialog;->mInputFlagConstraints:I

    iget v9, p0, Lorg/cocos2dx/lib/Cocos2dxEditTextBoxDialog;->mInputModeContraints:I

    or-int/2addr v7, v9

    invoke-virtual {v1, v7}, Landroid/widget/EditText;->setInputType(I)V

    .line 263
    iget v1, p0, Lorg/cocos2dx/lib/Cocos2dxEditTextBoxDialog;->mReturnType:I

    if-eqz v1, :cond_a

    if-eq v1, v0, :cond_9

    if-eq v1, v6, :cond_8

    if-eq v1, v10, :cond_7

    if-eq v1, v2, :cond_6

    .line 280
    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxEditTextBoxDialog;->mInputEditText:Landroid/widget/EditText;

    or-int/2addr p1, v0

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setImeOptions(I)V

    goto :goto_2

    .line 277
    :cond_6
    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxEditTextBoxDialog;->mInputEditText:Landroid/widget/EditText;

    or-int/2addr p1, v6

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setImeOptions(I)V

    goto :goto_2

    .line 274
    :cond_7
    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxEditTextBoxDialog;->mInputEditText:Landroid/widget/EditText;

    or-int/2addr p1, v10

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setImeOptions(I)V

    goto :goto_2

    .line 271
    :cond_8
    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxEditTextBoxDialog;->mInputEditText:Landroid/widget/EditText;

    or-int/2addr p1, v2

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setImeOptions(I)V

    goto :goto_2

    .line 268
    :cond_9
    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxEditTextBoxDialog;->mInputEditText:Landroid/widget/EditText;

    or-int/lit8 p1, p1, 0x6

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setImeOptions(I)V

    goto :goto_2

    .line 265
    :cond_a
    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxEditTextBoxDialog;->mInputEditText:Landroid/widget/EditText;

    or-int/lit8 p1, p1, 0x6

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 284
    :goto_2
    iget p1, p0, Lorg/cocos2dx/lib/Cocos2dxEditTextBoxDialog;->mMaxLength:I

    if-lez p1, :cond_b

    .line 285
    iget-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxEditTextBoxDialog;->mInputEditText:Landroid/widget/EditText;

    new-array v0, v0, [Landroid/text/InputFilter;

    new-instance v1, Landroid/text/InputFilter$LengthFilter;

    iget v2, p0, Lorg/cocos2dx/lib/Cocos2dxEditTextBoxDialog;->mMaxLength:I

    invoke-direct {v1, v2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v1, v0, v4

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 288
    :cond_b
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 289
    new-instance v0, Lorg/cocos2dx/lib/Cocos2dxEditTextBoxDialog$1;

    invoke-direct {v0, p0, v5, v3, v8}, Lorg/cocos2dx/lib/Cocos2dxEditTextBoxDialog$1;-><init>(Lorg/cocos2dx/lib/Cocos2dxEditTextBoxDialog;FFF)V

    const-wide/16 v1, 0xc8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 307
    iget-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxEditTextBoxDialog;->mInputEditText:Landroid/widget/EditText;

    new-instance v0, Lorg/cocos2dx/lib/Cocos2dxEditTextBoxDialog$2;

    invoke-direct {v0, p0}, Lorg/cocos2dx/lib/Cocos2dxEditTextBoxDialog$2;-><init>(Lorg/cocos2dx/lib/Cocos2dxEditTextBoxDialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
