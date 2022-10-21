.class Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool$1;
.super Ljava/lang/Object;
.source "RouteSpecificPool.java"

# interfaces
.implements Lch/boye/httpclientandroidlib/conn/params/ConnPerRoute;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool;-><init>(Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool;


# direct methods
.method constructor <init>(Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool$1;->this$0:Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMaxForRoute(Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;)I
    .locals 0

    .line 85
    iget-object p1, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool$1;->this$0:Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool;

    iget p1, p1, Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool;->maxEntries:I

    return p1
.end method
