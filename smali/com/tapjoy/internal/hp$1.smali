.class final Lcom/tapjoy/internal/hp$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tapjoy/internal/ay;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/internal/hp;-><init>(Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/tapjoy/internal/ay<",
        "Lcom/tapjoy/internal/ey;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/tapjoy/internal/hp;


# direct methods
.method constructor <init>(Lcom/tapjoy/internal/hp;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/tapjoy/internal/hp$1;->a:Lcom/tapjoy/internal/hp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/io/OutputStream;Ljava/lang/Object;)V
    .locals 2

    .line 31
    check-cast p2, Lcom/tapjoy/internal/ey;

    .line 2034
    sget-object v0, Lcom/tapjoy/internal/ey;->c:Lcom/tapjoy/internal/em;

    const-string v1, "value == null"

    .line 2164
    invoke-static {p2, v1}, Lcom/tapjoy/internal/el;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "stream == null"

    .line 2165
    invoke-static {p1, v1}, Lcom/tapjoy/internal/el;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2166
    invoke-static {p1}, Lcom/tapjoy/internal/iz;->a(Ljava/io/OutputStream;)Lcom/tapjoy/internal/jf;

    move-result-object p1

    invoke-static {p1}, Lcom/tapjoy/internal/iz;->a(Lcom/tapjoy/internal/jf;)Lcom/tapjoy/internal/iw;

    move-result-object p1

    .line 2167
    invoke-virtual {v0, p1, p2}, Lcom/tapjoy/internal/em;->a(Lcom/tapjoy/internal/iw;Ljava/lang/Object;)V

    .line 2168
    invoke-interface {p1}, Lcom/tapjoy/internal/iw;->a()Lcom/tapjoy/internal/iw;

    return-void
.end method

.method public final synthetic b(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 2

    .line 1039
    sget-object v0, Lcom/tapjoy/internal/ey;->c:Lcom/tapjoy/internal/em;

    const-string v1, "stream == null"

    .line 1188
    invoke-static {p1, v1}, Lcom/tapjoy/internal/el;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1189
    invoke-static {p1}, Lcom/tapjoy/internal/iz;->a(Ljava/io/InputStream;)Lcom/tapjoy/internal/jg;

    move-result-object p1

    invoke-static {p1}, Lcom/tapjoy/internal/iz;->a(Lcom/tapjoy/internal/jg;)Lcom/tapjoy/internal/ix;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/em;->a(Lcom/tapjoy/internal/ix;)Ljava/lang/Object;

    move-result-object p1

    .line 1039
    check-cast p1, Lcom/tapjoy/internal/ey;

    return-object p1
.end method
