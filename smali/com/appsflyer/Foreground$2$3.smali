.class final Lcom/appsflyer/Foreground$2$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsflyer/Foreground$2;->onActivityResumed(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic ǃ:Lcom/appsflyer/Foreground$2;

.field private synthetic ι:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/appsflyer/Foreground$2;Landroid/app/Activity;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/appsflyer/Foreground$2$3;->ǃ:Lcom/appsflyer/Foreground$2;

    iput-object p2, p0, Lcom/appsflyer/Foreground$2$3;->ι:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 35
    iget-object v0, p0, Lcom/appsflyer/Foreground$2$3;->ǃ:Lcom/appsflyer/Foreground$2;

    iget-boolean v1, v0, Lcom/appsflyer/Foreground$2;->Ι:Z

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 37
    :try_start_0
    iget-object v0, v0, Lcom/appsflyer/Foreground$2;->ǃ:Lcom/appsflyer/Foreground$Listener;

    iget-object v1, p0, Lcom/appsflyer/Foreground$2$3;->ι:Landroid/app/Activity;

    invoke-interface {v0, v1}, Lcom/appsflyer/Foreground$Listener;->onBecameForeground(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Listener thrown an exception: "

    .line 39
    invoke-static {v1, v0, v2}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 41
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/appsflyer/Foreground$2$3;->ǃ:Lcom/appsflyer/Foreground$2;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/appsflyer/Foreground$2;->ɩ:Z

    .line 42
    iput-boolean v2, v0, Lcom/appsflyer/Foreground$2;->Ι:Z

    return-void
.end method
