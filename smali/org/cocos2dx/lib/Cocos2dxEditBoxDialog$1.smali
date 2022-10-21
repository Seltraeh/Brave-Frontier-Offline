.class Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog$1;
.super Landroid/widget/EditText;
.source "Cocos2dxEditBoxDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;


# direct methods
.method constructor <init>(Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;Landroid/content/Context;)V
    .locals 0

    .line 171
    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog$1;->this$0:Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;

    invoke-direct {p0, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 174
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 175
    iget-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog$1;->this$0:Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;

    invoke-static {p1}, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->access$000(Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/cocos2dx/lib/Cocos2dxHelper;->setEditTextDialogResult(Ljava/lang/String;)V

    .line 176
    iget-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog$1;->this$0:Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;

    invoke-static {p1}, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->access$100(Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;)V

    .line 177
    iget-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog$1;->this$0:Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    const/4 p1, 0x1

    return p1

    .line 180
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
