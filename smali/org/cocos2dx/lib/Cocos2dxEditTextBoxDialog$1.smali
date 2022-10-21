.class Lorg/cocos2dx/lib/Cocos2dxEditTextBoxDialog$1;
.super Ljava/lang/Object;
.source "Cocos2dxEditTextBoxDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


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

.field final synthetic val$x:F

.field final synthetic val$xScale:F

.field final synthetic val$yScale:F


# direct methods
.method constructor <init>(Lorg/cocos2dx/lib/Cocos2dxEditTextBoxDialog;FFF)V
    .locals 0

    .line 289
    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxEditTextBoxDialog$1;->this$0:Lorg/cocos2dx/lib/Cocos2dxEditTextBoxDialog;

    iput p2, p0, Lorg/cocos2dx/lib/Cocos2dxEditTextBoxDialog$1;->val$x:F

    iput p3, p0, Lorg/cocos2dx/lib/Cocos2dxEditTextBoxDialog$1;->val$xScale:F

    iput p4, p0, Lorg/cocos2dx/lib/Cocos2dxEditTextBoxDialog$1;->val$yScale:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 294
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 295
    iget v1, p0, Lorg/cocos2dx/lib/Cocos2dxEditTextBoxDialog$1;->val$x:F

    iget v2, p0, Lorg/cocos2dx/lib/Cocos2dxEditTextBoxDialog$1;->val$xScale:F

    mul-float v1, v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    const/4 v1, 0x2

    .line 296
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 297
    iget-object v2, p0, Lorg/cocos2dx/lib/Cocos2dxEditTextBoxDialog$1;->this$0:Lorg/cocos2dx/lib/Cocos2dxEditTextBoxDialog;

    invoke-static {v2}, Lorg/cocos2dx/lib/Cocos2dxEditTextBoxDialog;->access$000(Lorg/cocos2dx/lib/Cocos2dxEditTextBoxDialog;)[I

    move-result-object v2

    aget v1, v2, v1

    int-to-float v1, v1

    iget v2, p0, Lorg/cocos2dx/lib/Cocos2dxEditTextBoxDialog$1;->val$xScale:F

    mul-float v1, v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 298
    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxEditTextBoxDialog$1;->this$0:Lorg/cocos2dx/lib/Cocos2dxEditTextBoxDialog;

    invoke-static {v1}, Lorg/cocos2dx/lib/Cocos2dxEditTextBoxDialog;->access$000(Lorg/cocos2dx/lib/Cocos2dxEditTextBoxDialog;)[I

    move-result-object v1

    const/4 v2, 0x3

    aget v1, v1, v2

    int-to-float v1, v1

    iget v2, p0, Lorg/cocos2dx/lib/Cocos2dxEditTextBoxDialog$1;->val$yScale:F

    mul-float v1, v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 299
    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxEditTextBoxDialog$1;->this$0:Lorg/cocos2dx/lib/Cocos2dxEditTextBoxDialog;

    invoke-static {v1}, Lorg/cocos2dx/lib/Cocos2dxEditTextBoxDialog;->access$100(Lorg/cocos2dx/lib/Cocos2dxEditTextBoxDialog;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 301
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxEditTextBoxDialog$1;->this$0:Lorg/cocos2dx/lib/Cocos2dxEditTextBoxDialog;

    invoke-static {v0}, Lorg/cocos2dx/lib/Cocos2dxEditTextBoxDialog;->access$100(Lorg/cocos2dx/lib/Cocos2dxEditTextBoxDialog;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 302
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxEditTextBoxDialog$1;->this$0:Lorg/cocos2dx/lib/Cocos2dxEditTextBoxDialog;

    invoke-static {v0}, Lorg/cocos2dx/lib/Cocos2dxEditTextBoxDialog;->access$100(Lorg/cocos2dx/lib/Cocos2dxEditTextBoxDialog;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxEditTextBoxDialog$1;->this$0:Lorg/cocos2dx/lib/Cocos2dxEditTextBoxDialog;

    invoke-static {v1}, Lorg/cocos2dx/lib/Cocos2dxEditTextBoxDialog;->access$100(Lorg/cocos2dx/lib/Cocos2dxEditTextBoxDialog;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 303
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxEditTextBoxDialog$1;->this$0:Lorg/cocos2dx/lib/Cocos2dxEditTextBoxDialog;

    invoke-static {v0}, Lorg/cocos2dx/lib/Cocos2dxEditTextBoxDialog;->access$200(Lorg/cocos2dx/lib/Cocos2dxEditTextBoxDialog;)V

    return-void
.end method
