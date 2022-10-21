.class public abstract Lcom/tapjoy/internal/ek$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/ek;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/tapjoy/internal/ek<",
        "TT;TB;>;B:",
        "Lcom/tapjoy/internal/ek$a<",
        "TT;TB;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field a:Lcom/tapjoy/internal/iv;

.field b:Lcom/tapjoy/internal/eo;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ILcom/tapjoy/internal/ej;Ljava/lang/Object;)Lcom/tapjoy/internal/ek$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/tapjoy/internal/ej;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/tapjoy/internal/ek$a<",
            "TT;TB;>;"
        }
    .end annotation

    .line 128
    iget-object v0, p0, Lcom/tapjoy/internal/ek$a;->b:Lcom/tapjoy/internal/eo;

    if-nez v0, :cond_0

    .line 129
    new-instance v0, Lcom/tapjoy/internal/iv;

    invoke-direct {v0}, Lcom/tapjoy/internal/iv;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/internal/ek$a;->a:Lcom/tapjoy/internal/iv;

    .line 130
    new-instance v1, Lcom/tapjoy/internal/eo;

    invoke-direct {v1, v0}, Lcom/tapjoy/internal/eo;-><init>(Lcom/tapjoy/internal/iw;)V

    iput-object v1, p0, Lcom/tapjoy/internal/ek$a;->b:Lcom/tapjoy/internal/eo;

    .line 133
    :cond_0
    :try_start_0
    invoke-virtual {p2}, Lcom/tapjoy/internal/ej;->a()Lcom/tapjoy/internal/em;

    move-result-object p2

    .line 134
    iget-object v0, p0, Lcom/tapjoy/internal/ek$a;->b:Lcom/tapjoy/internal/eo;

    invoke-virtual {p2, v0, p1, p3}, Lcom/tapjoy/internal/em;->a(Lcom/tapjoy/internal/eo;ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 136
    :catch_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method

.method public final a(Lcom/tapjoy/internal/iy;)Lcom/tapjoy/internal/ek$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tapjoy/internal/iy;",
            ")",
            "Lcom/tapjoy/internal/ek$a<",
            "TT;TB;>;"
        }
    .end annotation

    .line 113
    invoke-virtual {p1}, Lcom/tapjoy/internal/iy;->c()I

    move-result v0

    if-lez v0, :cond_1

    .line 114
    iget-object v0, p0, Lcom/tapjoy/internal/ek$a;->b:Lcom/tapjoy/internal/eo;

    if-nez v0, :cond_0

    .line 115
    new-instance v0, Lcom/tapjoy/internal/iv;

    invoke-direct {v0}, Lcom/tapjoy/internal/iv;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/internal/ek$a;->a:Lcom/tapjoy/internal/iv;

    .line 116
    new-instance v1, Lcom/tapjoy/internal/eo;

    invoke-direct {v1, v0}, Lcom/tapjoy/internal/eo;-><init>(Lcom/tapjoy/internal/iw;)V

    iput-object v1, p0, Lcom/tapjoy/internal/ek$a;->b:Lcom/tapjoy/internal/eo;

    .line 119
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/internal/ek$a;->b:Lcom/tapjoy/internal/eo;

    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/eo;->a(Lcom/tapjoy/internal/iy;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 121
    :catch_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    return-object p0
.end method

.method public final a()Lcom/tapjoy/internal/iy;
    .locals 2

    .line 152
    iget-object v0, p0, Lcom/tapjoy/internal/ek$a;->a:Lcom/tapjoy/internal/iv;

    if-eqz v0, :cond_0

    .line 153
    invoke-virtual {v0}, Lcom/tapjoy/internal/iv;->i()Lcom/tapjoy/internal/iv;

    move-result-object v0

    .line 1525
    new-instance v1, Lcom/tapjoy/internal/iy;

    invoke-virtual {v0}, Lcom/tapjoy/internal/iv;->h()[B

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/tapjoy/internal/iy;-><init>([B)V

    return-object v1

    .line 153
    :cond_0
    sget-object v0, Lcom/tapjoy/internal/iy;->b:Lcom/tapjoy/internal/iy;

    return-object v0
.end method
