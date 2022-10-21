.class public Lorg/cocos2dx/lib/Cocos2dxEditTextBoxDialogLayout;
.super Landroid/widget/LinearLayout;
.source "Cocos2dxEditTextBoxDialogLayout.java"


# instance fields
.field mParentDialog:Landroid/app/Dialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/Dialog;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 10
    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxEditTextBoxDialogLayout;->mParentDialog:Landroid/app/Dialog;

    .line 15
    iput-object p2, p0, Lorg/cocos2dx/lib/Cocos2dxEditTextBoxDialogLayout;->mParentDialog:Landroid/app/Dialog;

    return-void
.end method


# virtual methods
.method public dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z
    .locals 2

    .line 23
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 24
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxEditTextBoxDialogLayout;->mParentDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->onBackPressed()V

    .line 27
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
