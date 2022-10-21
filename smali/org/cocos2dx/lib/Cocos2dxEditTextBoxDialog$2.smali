.class Lorg/cocos2dx/lib/Cocos2dxEditTextBoxDialog$2;
.super Ljava/lang/Object;
.source "Cocos2dxEditTextBoxDialog.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cocos2dx/lib/Cocos2dxEditTextBoxDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cocos2dx/lib/Cocos2dxEditTextBoxDialog;


# direct methods
.method constructor <init>(Lorg/cocos2dx/lib/Cocos2dxEditTextBoxDialog;)V
    .locals 0

    .line 307
    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxEditTextBoxDialog$2;->this$0:Lorg/cocos2dx/lib/Cocos2dxEditTextBoxDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    if-nez p2, :cond_1

    if-nez p2, :cond_0

    if-eqz p3, :cond_0

    .line 311
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 312
    :cond_1
    :goto_0
    iget-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxEditTextBoxDialog$2;->this$0:Lorg/cocos2dx/lib/Cocos2dxEditTextBoxDialog;

    invoke-static {p1}, Lorg/cocos2dx/lib/Cocos2dxEditTextBoxDialog;->access$100(Lorg/cocos2dx/lib/Cocos2dxEditTextBoxDialog;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/cocos2dx/lib/Cocos2dxHelper;->setEditTextDialogResult(Ljava/lang/String;)V

    .line 313
    iget-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxEditTextBoxDialog$2;->this$0:Lorg/cocos2dx/lib/Cocos2dxEditTextBoxDialog;

    invoke-static {p1}, Lorg/cocos2dx/lib/Cocos2dxEditTextBoxDialog;->access$300(Lorg/cocos2dx/lib/Cocos2dxEditTextBoxDialog;)V

    .line 314
    iget-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxEditTextBoxDialog$2;->this$0:Lorg/cocos2dx/lib/Cocos2dxEditTextBoxDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    const/4 p1, 0x1

    return p1
.end method
