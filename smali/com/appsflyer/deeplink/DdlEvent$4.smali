.class final Lcom/appsflyer/deeplink/DdlEvent$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsflyer/deeplink/DdlEvent;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/appsflyer/deeplink/DeepLinkResult;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic ǃ:Lcom/appsflyer/deeplink/DdlEvent;


# direct methods
.method constructor <init>(Lcom/appsflyer/deeplink/DdlEvent;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/appsflyer/deeplink/DdlEvent$4;->ǃ:Lcom/appsflyer/deeplink/DdlEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1098
    iget-object v0, p0, Lcom/appsflyer/deeplink/DdlEvent$4;->ǃ:Lcom/appsflyer/deeplink/DdlEvent;

    invoke-static {v0}, Lcom/appsflyer/deeplink/DdlEvent;->ι(Lcom/appsflyer/deeplink/DdlEvent;)Landroid/app/Application;

    move-result-object v0

    .line 1099
    iget-object v1, p0, Lcom/appsflyer/deeplink/DdlEvent$4;->ǃ:Lcom/appsflyer/deeplink/DdlEvent;

    invoke-static {v1}, Lcom/appsflyer/deeplink/DdlEvent;->ǃ(Lcom/appsflyer/deeplink/DdlEvent;)V

    .line 1100
    iget-object v1, p0, Lcom/appsflyer/deeplink/DdlEvent$4;->ǃ:Lcom/appsflyer/deeplink/DdlEvent;

    invoke-static {v1, v0}, Lcom/appsflyer/deeplink/DdlEvent;->ǃ(Lcom/appsflyer/deeplink/DdlEvent;Landroid/content/Context;)V

    .line 1101
    iget-object v1, p0, Lcom/appsflyer/deeplink/DdlEvent$4;->ǃ:Lcom/appsflyer/deeplink/DdlEvent;

    invoke-static {v1, v0}, Lcom/appsflyer/deeplink/DdlEvent;->ι(Lcom/appsflyer/deeplink/DdlEvent;Landroid/content/Context;)Lcom/appsflyer/deeplink/DeepLinkResult;

    move-result-object v0

    return-object v0
.end method
