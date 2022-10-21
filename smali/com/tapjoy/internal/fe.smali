.class public final Lcom/tapjoy/internal/fe;
.super Lcom/tapjoy/internal/ek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapjoy/internal/fe$b;,
        Lcom/tapjoy/internal/fe$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tapjoy/internal/ek<",
        "Lcom/tapjoy/internal/fe;",
        "Lcom/tapjoy/internal/fe$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final c:Lcom/tapjoy/internal/em;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tapjoy/internal/em<",
            "Lcom/tapjoy/internal/fe;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final d:Lcom/tapjoy/internal/fd;

.field public final e:Lcom/tapjoy/internal/ex;

.field public final f:Lcom/tapjoy/internal/fk;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    new-instance v0, Lcom/tapjoy/internal/fe$b;

    invoke-direct {v0}, Lcom/tapjoy/internal/fe$b;-><init>()V

    sput-object v0, Lcom/tapjoy/internal/fe;->c:Lcom/tapjoy/internal/em;

    return-void
.end method

.method public constructor <init>(Lcom/tapjoy/internal/fd;Lcom/tapjoy/internal/ex;Lcom/tapjoy/internal/fk;)V
    .locals 1

    .line 43
    sget-object v0, Lcom/tapjoy/internal/iy;->b:Lcom/tapjoy/internal/iy;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/tapjoy/internal/fe;-><init>(Lcom/tapjoy/internal/fd;Lcom/tapjoy/internal/ex;Lcom/tapjoy/internal/fk;Lcom/tapjoy/internal/iy;)V

    return-void
.end method

.method public constructor <init>(Lcom/tapjoy/internal/fd;Lcom/tapjoy/internal/ex;Lcom/tapjoy/internal/fk;Lcom/tapjoy/internal/iy;)V
    .locals 1

    .line 47
    sget-object v0, Lcom/tapjoy/internal/fe;->c:Lcom/tapjoy/internal/em;

    invoke-direct {p0, v0, p4}, Lcom/tapjoy/internal/ek;-><init>(Lcom/tapjoy/internal/em;Lcom/tapjoy/internal/iy;)V

    .line 48
    iput-object p1, p0, Lcom/tapjoy/internal/fe;->d:Lcom/tapjoy/internal/fd;

    .line 49
    iput-object p2, p0, Lcom/tapjoy/internal/fe;->e:Lcom/tapjoy/internal/ex;

    .line 50
    iput-object p3, p0, Lcom/tapjoy/internal/fe;->f:Lcom/tapjoy/internal/fk;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 66
    :cond_0
    instance-of v1, p1, Lcom/tapjoy/internal/fe;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 67
    :cond_1
    check-cast p1, Lcom/tapjoy/internal/fe;

    .line 68
    invoke-virtual {p0}, Lcom/tapjoy/internal/ek;->a()Lcom/tapjoy/internal/iy;

    move-result-object v1

    invoke-virtual {p1}, Lcom/tapjoy/internal/ek;->a()Lcom/tapjoy/internal/iy;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/tapjoy/internal/iy;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tapjoy/internal/fe;->d:Lcom/tapjoy/internal/fd;

    iget-object v3, p1, Lcom/tapjoy/internal/fe;->d:Lcom/tapjoy/internal/fd;

    .line 69
    invoke-static {v1, v3}, Lcom/tapjoy/internal/er;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tapjoy/internal/fe;->e:Lcom/tapjoy/internal/ex;

    iget-object v3, p1, Lcom/tapjoy/internal/fe;->e:Lcom/tapjoy/internal/ex;

    .line 70
    invoke-static {v1, v3}, Lcom/tapjoy/internal/er;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tapjoy/internal/fe;->f:Lcom/tapjoy/internal/fk;

    iget-object p1, p1, Lcom/tapjoy/internal/fe;->f:Lcom/tapjoy/internal/fk;

    .line 71
    invoke-static {v1, p1}, Lcom/tapjoy/internal/er;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 3

    .line 76
    iget v0, p0, Lcom/tapjoy/internal/ek;->b:I

    if-nez v0, :cond_3

    .line 78
    invoke-virtual {p0}, Lcom/tapjoy/internal/ek;->a()Lcom/tapjoy/internal/iy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/iy;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    .line 79
    iget-object v1, p0, Lcom/tapjoy/internal/fe;->d:Lcom/tapjoy/internal/fd;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/tapjoy/internal/fd;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 80
    iget-object v1, p0, Lcom/tapjoy/internal/fe;->e:Lcom/tapjoy/internal/ex;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/tapjoy/internal/ex;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 81
    iget-object v1, p0, Lcom/tapjoy/internal/fe;->f:Lcom/tapjoy/internal/fk;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/tapjoy/internal/fk;->hashCode()I

    move-result v2

    :cond_2
    add-int/2addr v0, v2

    .line 82
    iput v0, p0, Lcom/tapjoy/internal/ek;->b:I

    :cond_3
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 90
    iget-object v1, p0, Lcom/tapjoy/internal/fe;->d:Lcom/tapjoy/internal/fd;

    if-eqz v1, :cond_0

    const-string v1, ", info="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tapjoy/internal/fe;->d:Lcom/tapjoy/internal/fd;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 91
    :cond_0
    iget-object v1, p0, Lcom/tapjoy/internal/fe;->e:Lcom/tapjoy/internal/ex;

    if-eqz v1, :cond_1

    const-string v1, ", app="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tapjoy/internal/fe;->e:Lcom/tapjoy/internal/ex;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 92
    :cond_1
    iget-object v1, p0, Lcom/tapjoy/internal/fe;->f:Lcom/tapjoy/internal/fk;

    if-eqz v1, :cond_2

    const-string v1, ", user="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tapjoy/internal/fe;->f:Lcom/tapjoy/internal/fk;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_2
    const/4 v1, 0x0

    const/4 v2, 0x2

    const-string v3, "InfoSet{"

    .line 93
    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
