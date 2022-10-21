.class Lsg/gumi/bravefrontier/BraveFrontierJNI$7$1;
.super Ljava/lang/Object;
.source "BraveFrontierJNI.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsg/gumi/bravefrontier/BraveFrontierJNI$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lsg/gumi/bravefrontier/BraveFrontierJNI$7;

.field final synthetic val$mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Lsg/gumi/bravefrontier/BraveFrontierJNI$7;Landroid/content/Context;)V
    .locals 0

    .line 645
    iput-object p1, p0, Lsg/gumi/bravefrontier/BraveFrontierJNI$7$1;->this$0:Lsg/gumi/bravefrontier/BraveFrontierJNI$7;

    iput-object p2, p0, Lsg/gumi/bravefrontier/BraveFrontierJNI$7$1;->val$mContext:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 648
    sget-object p1, Lsg/gumi/util/BFConfig;->PLATFORM:Lsg/gumi/util/BFConfig$Platform;

    sget-object p2, Lsg/gumi/util/BFConfig;->PLATFORM_AMAZON:Lsg/gumi/util/BFConfig$Platform;

    if-ne p1, p2, :cond_0

    .line 649
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "amzn://apps/android?p="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lsg/gumi/bravefrontier/BraveFrontierJNI$7$1;->val$mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 650
    :cond_0
    sget-object p1, Lsg/gumi/util/BFConfig;->PLATFORM:Lsg/gumi/util/BFConfig$Platform;

    sget-object p2, Lsg/gumi/util/BFConfig;->PLATFORM_SAMSUNG:Lsg/gumi/util/BFConfig$Platform;

    if-ne p1, p2, :cond_1

    .line 651
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "samsungapps://ProductDetail/"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lsg/gumi/bravefrontier/BraveFrontierJNI$7$1;->val$mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 653
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "market://details?id="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lsg/gumi/bravefrontier/BraveFrontierJNI$7$1;->val$mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    const-string p2, "MARKET-URL"

    .line 656
    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    new-instance p2, Landroid/content/Intent;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p2, v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 661
    invoke-static {}, Lsg/gumi/bravefrontier/BraveFrontierJNI;->access$000()Lorg/cocos2dx/lib/Cocos2dxActivity;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const/4 p1, 0x0

    .line 663
    invoke-static {p1}, Lsg/gumi/bravefrontier/BraveFrontierJNI;->nativeRateThisAppPopupCallback(I)V

    return-void
.end method
