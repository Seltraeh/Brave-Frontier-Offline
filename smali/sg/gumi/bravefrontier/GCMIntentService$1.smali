.class Lsg/gumi/bravefrontier/GCMIntentService$1;
.super Ljava/lang/Object;
.source "GCMIntentService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsg/gumi/bravefrontier/GCMIntentService;->onRegistered(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lsg/gumi/bravefrontier/GCMIntentService;

.field final synthetic val$deviceId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lsg/gumi/bravefrontier/GCMIntentService;Ljava/lang/String;)V
    .locals 0

    .line 181
    iput-object p1, p0, Lsg/gumi/bravefrontier/GCMIntentService$1;->this$0:Lsg/gumi/bravefrontier/GCMIntentService;

    iput-object p2, p0, Lsg/gumi/bravefrontier/GCMIntentService$1;->val$deviceId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 185
    :try_start_0
    iget-object v0, p0, Lsg/gumi/bravefrontier/GCMIntentService$1;->val$deviceId:Ljava/lang/String;

    invoke-static {v0}, Lsg/gumi/bravefrontier/BraveFrontierJNI;->nativeSetDeviceRegistrationId(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method
