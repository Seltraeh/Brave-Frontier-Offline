.class Lch/boye/httpclientandroidlib/impl/conn/HttpConnPool;
.super Lch/boye/httpclientandroidlib/pool/AbstractConnPool;
.source "HttpConnPool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lch/boye/httpclientandroidlib/impl/conn/HttpConnPool$InternalConnFactory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lch/boye/httpclientandroidlib/pool/AbstractConnPool<",
        "Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;",
        "Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;",
        "Lch/boye/httpclientandroidlib/impl/conn/HttpPoolEntry;",
        ">;"
    }
.end annotation


# static fields
.field private static COUNTER:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field public log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

.field private final timeToLive:J

.field private final tunit:Ljava/util/concurrent/TimeUnit;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    sput-object v0, Lch/boye/httpclientandroidlib/impl/conn/HttpConnPool;->COUNTER:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method public constructor <init>(Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;IIJLjava/util/concurrent/TimeUnit;)V
    .locals 1

    .line 53
    new-instance v0, Lch/boye/httpclientandroidlib/impl/conn/HttpConnPool$InternalConnFactory;

    invoke-direct {v0}, Lch/boye/httpclientandroidlib/impl/conn/HttpConnPool$InternalConnFactory;-><init>()V

    invoke-direct {p0, v0, p2, p3}, Lch/boye/httpclientandroidlib/pool/AbstractConnPool;-><init>(Lch/boye/httpclientandroidlib/pool/ConnFactory;II)V

    .line 54
    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/conn/HttpConnPool;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    .line 55
    iput-wide p4, p0, Lch/boye/httpclientandroidlib/impl/conn/HttpConnPool;->timeToLive:J

    .line 56
    iput-object p6, p0, Lch/boye/httpclientandroidlib/impl/conn/HttpConnPool;->tunit:Ljava/util/concurrent/TimeUnit;

    return-void
.end method


# virtual methods
.method protected createEntry(Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;)Lch/boye/httpclientandroidlib/impl/conn/HttpPoolEntry;
    .locals 10

    .line 61
    sget-object v0, Lch/boye/httpclientandroidlib/impl/conn/HttpConnPool;->COUNTER:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    .line 62
    new-instance v0, Lch/boye/httpclientandroidlib/impl/conn/HttpPoolEntry;

    iget-object v3, p0, Lch/boye/httpclientandroidlib/impl/conn/HttpConnPool;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    iget-wide v7, p0, Lch/boye/httpclientandroidlib/impl/conn/HttpConnPool;->timeToLive:J

    iget-object v9, p0, Lch/boye/httpclientandroidlib/impl/conn/HttpConnPool;->tunit:Ljava/util/concurrent/TimeUnit;

    move-object v2, v0

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v2 .. v9}, Lch/boye/httpclientandroidlib/impl/conn/HttpPoolEntry;-><init>(Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;Ljava/lang/String;Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;JLjava/util/concurrent/TimeUnit;)V

    return-object v0
.end method

.method protected bridge synthetic createEntry(Ljava/lang/Object;Ljava/lang/Object;)Lch/boye/httpclientandroidlib/pool/PoolEntry;
    .locals 0

    .line 42
    check-cast p1, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;

    check-cast p2, Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;

    invoke-virtual {p0, p1, p2}, Lch/boye/httpclientandroidlib/impl/conn/HttpConnPool;->createEntry(Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;)Lch/boye/httpclientandroidlib/impl/conn/HttpPoolEntry;

    move-result-object p1

    return-object p1
.end method
