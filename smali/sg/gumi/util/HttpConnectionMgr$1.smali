.class Lsg/gumi/util/HttpConnectionMgr$1;
.super Ljava/lang/Object;
.source "AsyncFileLoad.java"

# interfaces
.implements Lch/boye/httpclientandroidlib/conn/ConnectionKeepAliveStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsg/gumi/util/HttpConnectionMgr;->createConnection()Lch/boye/httpclientandroidlib/impl/client/DefaultHttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lsg/gumi/util/HttpConnectionMgr;


# direct methods
.method constructor <init>(Lsg/gumi/util/HttpConnectionMgr;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lsg/gumi/util/HttpConnectionMgr$1;->this$0:Lsg/gumi/util/HttpConnectionMgr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getKeepAliveDuration(Lch/boye/httpclientandroidlib/HttpResponse;Lch/boye/httpclientandroidlib/protocol/HttpContext;)J
    .locals 0

    const-wide/16 p1, 0x7530

    return-wide p1
.end method
