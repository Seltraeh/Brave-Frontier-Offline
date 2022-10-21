.class public final Lcom/tapjoy/internal/ex;
.super Lcom/tapjoy/internal/ek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapjoy/internal/ex$b;,
        Lcom/tapjoy/internal/ex$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tapjoy/internal/ek<",
        "Lcom/tapjoy/internal/ex;",
        "Lcom/tapjoy/internal/ex$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final c:Lcom/tapjoy/internal/em;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tapjoy/internal/em<",
            "Lcom/tapjoy/internal/ex;",
            ">;"
        }
    .end annotation
.end field

.field public static final d:Ljava/lang/Integer;


# instance fields
.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/Integer;

.field public final g:Ljava/lang/String;

.field public final h:Ljava/lang/String;

.field public final i:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    new-instance v0, Lcom/tapjoy/internal/ex$b;

    invoke-direct {v0}, Lcom/tapjoy/internal/ex$b;-><init>()V

    sput-object v0, Lcom/tapjoy/internal/ex;->c:Lcom/tapjoy/internal/em;

    const/4 v0, 0x0

    .line 27
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/tapjoy/internal/ex;->d:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tapjoy/internal/iy;)V
    .locals 1

    .line 70
    sget-object v0, Lcom/tapjoy/internal/ex;->c:Lcom/tapjoy/internal/em;

    invoke-direct {p0, v0, p6}, Lcom/tapjoy/internal/ek;-><init>(Lcom/tapjoy/internal/em;Lcom/tapjoy/internal/iy;)V

    .line 71
    iput-object p1, p0, Lcom/tapjoy/internal/ex;->e:Ljava/lang/String;

    .line 72
    iput-object p2, p0, Lcom/tapjoy/internal/ex;->f:Ljava/lang/Integer;

    .line 73
    iput-object p3, p0, Lcom/tapjoy/internal/ex;->g:Ljava/lang/String;

    .line 74
    iput-object p4, p0, Lcom/tapjoy/internal/ex;->h:Ljava/lang/String;

    .line 75
    iput-object p5, p0, Lcom/tapjoy/internal/ex;->i:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 93
    :cond_0
    instance-of v1, p1, Lcom/tapjoy/internal/ex;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 94
    :cond_1
    check-cast p1, Lcom/tapjoy/internal/ex;

    .line 95
    invoke-virtual {p0}, Lcom/tapjoy/internal/ek;->a()Lcom/tapjoy/internal/iy;

    move-result-object v1

    invoke-virtual {p1}, Lcom/tapjoy/internal/ek;->a()Lcom/tapjoy/internal/iy;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/tapjoy/internal/iy;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tapjoy/internal/ex;->e:Ljava/lang/String;

    iget-object v3, p1, Lcom/tapjoy/internal/ex;->e:Ljava/lang/String;

    .line 96
    invoke-static {v1, v3}, Lcom/tapjoy/internal/er;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tapjoy/internal/ex;->f:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/tapjoy/internal/ex;->f:Ljava/lang/Integer;

    .line 97
    invoke-static {v1, v3}, Lcom/tapjoy/internal/er;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tapjoy/internal/ex;->g:Ljava/lang/String;

    iget-object v3, p1, Lcom/tapjoy/internal/ex;->g:Ljava/lang/String;

    .line 98
    invoke-static {v1, v3}, Lcom/tapjoy/internal/er;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tapjoy/internal/ex;->h:Ljava/lang/String;

    iget-object v3, p1, Lcom/tapjoy/internal/ex;->h:Ljava/lang/String;

    .line 99
    invoke-static {v1, v3}, Lcom/tapjoy/internal/er;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tapjoy/internal/ex;->i:Ljava/lang/String;

    iget-object p1, p1, Lcom/tapjoy/internal/ex;->i:Ljava/lang/String;

    .line 100
    invoke-static {v1, p1}, Lcom/tapjoy/internal/er;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 3

    .line 105
    iget v0, p0, Lcom/tapjoy/internal/ek;->b:I

    if-nez v0, :cond_5

    .line 107
    invoke-virtual {p0}, Lcom/tapjoy/internal/ek;->a()Lcom/tapjoy/internal/iy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/iy;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    .line 108
    iget-object v1, p0, Lcom/tapjoy/internal/ex;->e:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 109
    iget-object v1, p0, Lcom/tapjoy/internal/ex;->f:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 110
    iget-object v1, p0, Lcom/tapjoy/internal/ex;->g:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 111
    iget-object v1, p0, Lcom/tapjoy/internal/ex;->h:Ljava/lang/String;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 112
    iget-object v1, p0, Lcom/tapjoy/internal/ex;->i:Ljava/lang/String;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :cond_4
    add-int/2addr v0, v2

    .line 113
    iput v0, p0, Lcom/tapjoy/internal/ek;->b:I

    :cond_5
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 121
    iget-object v1, p0, Lcom/tapjoy/internal/ex;->e:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, ", pkgVer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tapjoy/internal/ex;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    :cond_0
    iget-object v1, p0, Lcom/tapjoy/internal/ex;->f:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    const-string v1, ", pkgRev="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tapjoy/internal/ex;->f:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 123
    :cond_1
    iget-object v1, p0, Lcom/tapjoy/internal/ex;->g:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v1, ", dataVer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tapjoy/internal/ex;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    :cond_2
    iget-object v1, p0, Lcom/tapjoy/internal/ex;->h:Ljava/lang/String;

    if-eqz v1, :cond_3

    const-string v1, ", installer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tapjoy/internal/ex;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    :cond_3
    iget-object v1, p0, Lcom/tapjoy/internal/ex;->i:Ljava/lang/String;

    if-eqz v1, :cond_4

    const-string v1, ", store="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tapjoy/internal/ex;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    const/4 v1, 0x0

    const/4 v2, 0x2

    const-string v3, "App{"

    .line 126
    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
