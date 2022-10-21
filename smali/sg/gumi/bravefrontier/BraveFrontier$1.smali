.class Lsg/gumi/bravefrontier/BraveFrontier$1;
.super Ljava/lang/Object;
.source "BraveFrontier.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsg/gumi/bravefrontier/BraveFrontier;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lsg/gumi/bravefrontier/BraveFrontier;


# direct methods
.method constructor <init>(Lsg/gumi/bravefrontier/BraveFrontier;)V
    .locals 0

    .line 185
    iput-object p1, p0, Lsg/gumi/bravefrontier/BraveFrontier$1;->this$0:Lsg/gumi/bravefrontier/BraveFrontier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 187
    iget-object v0, p0, Lsg/gumi/bravefrontier/BraveFrontier$1;->this$0:Lsg/gumi/bravefrontier/BraveFrontier;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 189
    :try_start_0
    iget-object v1, p0, Lsg/gumi/bravefrontier/BraveFrontier$1;->this$0:Lsg/gumi/bravefrontier/BraveFrontier;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object v1

    .line 190
    invoke-virtual {v1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lsg/gumi/bravefrontier/BraveFrontier;->access$002(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 192
    :catch_0
    invoke-static {v0}, Lsg/gumi/bravefrontier/BraveFrontier;->access$002(Ljava/lang/String;)Ljava/lang/String;

    :goto_0
    return-void
.end method
