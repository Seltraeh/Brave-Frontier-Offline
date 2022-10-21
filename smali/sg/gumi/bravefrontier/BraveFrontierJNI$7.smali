.class Lsg/gumi/bravefrontier/BraveFrontierJNI$7;
.super Ljava/lang/Object;
.source "BraveFrontierJNI.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsg/gumi/bravefrontier/BraveFrontierJNI;->showRateThisAppPopup(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$body:Ljava/lang/String;

.field final synthetic val$btn1Text:Ljava/lang/String;

.field final synthetic val$btn2Text:Ljava/lang/String;

.field final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 622
    iput-object p1, p0, Lsg/gumi/bravefrontier/BraveFrontierJNI$7;->val$body:Ljava/lang/String;

    iput-object p2, p0, Lsg/gumi/bravefrontier/BraveFrontierJNI$7;->val$title:Ljava/lang/String;

    iput-object p3, p0, Lsg/gumi/bravefrontier/BraveFrontierJNI$7;->val$btn1Text:Ljava/lang/String;

    iput-object p4, p0, Lsg/gumi/bravefrontier/BraveFrontierJNI$7;->val$btn2Text:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 625
    invoke-static {}, Lsg/gumi/bravefrontier/BraveFrontierJNI;->access$000()Lorg/cocos2dx/lib/Cocos2dxActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 627
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-static {}, Lsg/gumi/bravefrontier/BraveFrontierJNI;->access$000()Lorg/cocos2dx/lib/Cocos2dxActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 629
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/16 v3, 0xa

    .line 631
    invoke-virtual {v2, v3, v3, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    const/16 v3, 0x11

    .line 632
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v4, -0x1

    .line 633
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v4, 0x41a00000    # 20.0f

    .line 634
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 635
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCustomTitle(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 637
    sget-object v4, Lsg/gumi/util/BFConfig;->PLATFORM:Lsg/gumi/util/BFConfig$Platform;

    sget-object v5, Lsg/gumi/util/BFConfig;->PLATFORM_AMAZON:Lsg/gumi/util/BFConfig$Platform;

    if-ne v4, v5, :cond_0

    .line 638
    iget-object v4, p0, Lsg/gumi/bravefrontier/BraveFrontierJNI$7;->val$body:Ljava/lang/String;

    const-string v5, "Amazon Appstore"

    const-string v6, "Amazon"

    invoke-static {v4, v5, v6}, Lsg/gumi/bravefrontier/BraveFrontierJNI;->access$100(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 640
    :cond_0
    iget-object v4, p0, Lsg/gumi/bravefrontier/BraveFrontierJNI$7;->val$body:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 642
    :goto_0
    iget-object v4, p0, Lsg/gumi/bravefrontier/BraveFrontierJNI$7;->val$title:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 645
    iget-object v2, p0, Lsg/gumi/bravefrontier/BraveFrontierJNI$7;->val$btn1Text:Ljava/lang/String;

    new-instance v4, Lsg/gumi/bravefrontier/BraveFrontierJNI$7$1;

    invoke-direct {v4, p0, v0}, Lsg/gumi/bravefrontier/BraveFrontierJNI$7$1;-><init>(Lsg/gumi/bravefrontier/BraveFrontierJNI$7;Landroid/content/Context;)V

    invoke-virtual {v1, v2, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 667
    iget-object v0, p0, Lsg/gumi/bravefrontier/BraveFrontierJNI$7;->val$btn2Text:Ljava/lang/String;

    new-instance v2, Lsg/gumi/bravefrontier/BraveFrontierJNI$7$2;

    invoke-direct {v2, p0}, Lsg/gumi/bravefrontier/BraveFrontierJNI$7$2;-><init>(Lsg/gumi/bravefrontier/BraveFrontierJNI$7;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 674
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 675
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    const v1, 0x102000b

    .line 679
    :try_start_0
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 680
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setGravity(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 682
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method
