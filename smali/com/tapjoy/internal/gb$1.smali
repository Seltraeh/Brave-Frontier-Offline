.class final Lcom/tapjoy/internal/gb$1;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/internal/gb;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:Lcom/tapjoy/internal/gb;


# direct methods
.method constructor <init>(Lcom/tapjoy/internal/gb;Ljava/util/Map;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/tapjoy/internal/gb$1;->b:Lcom/tapjoy/internal/gb;

    iput-object p2, p0, Lcom/tapjoy/internal/gb$1;->a:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 50
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 51
    iget-object v0, p0, Lcom/tapjoy/internal/gb$1;->b:Lcom/tapjoy/internal/gb;

    .line 1013
    iget-object v0, v0, Lcom/tapjoy/internal/gb;->d:Lcom/tapjoy/TapjoyURLConnection;

    .line 51
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/tapjoy/internal/gb$1;->b:Lcom/tapjoy/internal/gb;

    .line 2013
    iget-object v2, v2, Lcom/tapjoy/internal/gb;->a:Ljava/lang/String;

    .line 51
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tapjoy/internal/gb$1;->b:Lcom/tapjoy/internal/gb;

    .line 3013
    iget-object v2, v2, Lcom/tapjoy/internal/gb;->b:Ljava/lang/String;

    .line 51
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/gb$1;->a:Ljava/util/Map;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v3, v2}, Lcom/tapjoy/TapjoyURLConnection;->getResponseFromURL(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Lcom/tapjoy/TapjoyHttpURLResponse;

    return-void
.end method
