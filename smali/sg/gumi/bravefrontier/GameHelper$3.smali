.class Lsg/gumi/bravefrontier/GameHelper$3;
.super Ljava/lang/Object;
.source "GameHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsg/gumi/bravefrontier/GameHelper;->onSignInSucceededTask()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lsg/gumi/bravefrontier/GameHelper;


# direct methods
.method constructor <init>(Lsg/gumi/bravefrontier/GameHelper;)V
    .locals 0

    .line 1022
    iput-object p1, p0, Lsg/gumi/bravefrontier/GameHelper$3;->this$0:Lsg/gumi/bravefrontier/GameHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1026
    invoke-static {}, Lsg/gumi/bravefrontier/BraveFrontier;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "GOOGLE_PLAY"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1027
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v3, "ACH"

    const-string v4, ""

    .line 1029
    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1030
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, ","

    .line 1031
    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1032
    :goto_0
    array-length v4, v0

    if-ge v2, v4, :cond_0

    .line 1033
    aget-object v4, v0, v2

    invoke-static {v4}, Lsg/gumi/bravefrontier/BraveFrontier;->unlockGPGSAchievement(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1036
    :cond_0
    invoke-interface {v1, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1037
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1040
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxHelper;->isNativeLibraryLoaded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1041
    invoke-static {}, Lsg/gumi/bravefrontier/BraveFrontier;->onGPGSSignInSucceeded()V

    :cond_1
    return-void
.end method
