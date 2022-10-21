.class Lch/boye/httpclientandroidlib/impl/conn/BasicClientConnectionManager$1;
.super Ljava/lang/Object;
.source "BasicClientConnectionManager.java"

# interfaces
.implements Lch/boye/httpclientandroidlib/conn/ClientConnectionRequest;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/boye/httpclientandroidlib/impl/conn/BasicClientConnectionManager;->requestConnection(Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;Ljava/lang/Object;)Lch/boye/httpclientandroidlib/conn/ClientConnectionRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lch/boye/httpclientandroidlib/impl/conn/BasicClientConnectionManager;

.field final synthetic val$route:Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;

.field final synthetic val$state:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lch/boye/httpclientandroidlib/impl/conn/BasicClientConnectionManager;Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;Ljava/lang/Object;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/conn/BasicClientConnectionManager$1;->this$0:Lch/boye/httpclientandroidlib/impl/conn/BasicClientConnectionManager;

    iput-object p2, p0, Lch/boye/httpclientandroidlib/impl/conn/BasicClientConnectionManager$1;->val$route:Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;

    iput-object p3, p0, Lch/boye/httpclientandroidlib/impl/conn/BasicClientConnectionManager$1;->val$state:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abortRequest()V
    .locals 0

    return-void
.end method

.method public getConnection(JLjava/util/concurrent/TimeUnit;)Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;
    .locals 0

    .line 139
    iget-object p1, p0, Lch/boye/httpclientandroidlib/impl/conn/BasicClientConnectionManager$1;->this$0:Lch/boye/httpclientandroidlib/impl/conn/BasicClientConnectionManager;

    iget-object p2, p0, Lch/boye/httpclientandroidlib/impl/conn/BasicClientConnectionManager$1;->val$route:Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;

    iget-object p3, p0, Lch/boye/httpclientandroidlib/impl/conn/BasicClientConnectionManager$1;->val$state:Ljava/lang/Object;

    invoke-virtual {p1, p2, p3}, Lch/boye/httpclientandroidlib/impl/conn/BasicClientConnectionManager;->getConnection(Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;Ljava/lang/Object;)Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;

    move-result-object p1

    return-object p1
.end method
