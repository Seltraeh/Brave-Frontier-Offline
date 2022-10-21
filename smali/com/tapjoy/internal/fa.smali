.class public final Lcom/tapjoy/internal/fa;
.super Lcom/tapjoy/internal/ek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapjoy/internal/fa$b;,
        Lcom/tapjoy/internal/fa$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tapjoy/internal/ek<",
        "Lcom/tapjoy/internal/fa;",
        "Lcom/tapjoy/internal/fa$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final c:Lcom/tapjoy/internal/em;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tapjoy/internal/em<",
            "Lcom/tapjoy/internal/fa;",
            ">;"
        }
    .end annotation
.end field

.field public static final d:Lcom/tapjoy/internal/fb;


# instance fields
.field public final e:Lcom/tapjoy/internal/fb;

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    new-instance v0, Lcom/tapjoy/internal/fa$b;

    invoke-direct {v0}, Lcom/tapjoy/internal/fa$b;-><init>()V

    sput-object v0, Lcom/tapjoy/internal/fa;->c:Lcom/tapjoy/internal/em;

    .line 24
    sget-object v0, Lcom/tapjoy/internal/fb;->a:Lcom/tapjoy/internal/fb;

    sput-object v0, Lcom/tapjoy/internal/fa;->d:Lcom/tapjoy/internal/fb;

    return-void
.end method

.method public constructor <init>(Lcom/tapjoy/internal/fb;Ljava/lang/String;Ljava/lang/String;Lcom/tapjoy/internal/iy;)V
    .locals 1

    .line 55
    sget-object v0, Lcom/tapjoy/internal/fa;->c:Lcom/tapjoy/internal/em;

    invoke-direct {p0, v0, p4}, Lcom/tapjoy/internal/ek;-><init>(Lcom/tapjoy/internal/em;Lcom/tapjoy/internal/iy;)V

    .line 56
    iput-object p1, p0, Lcom/tapjoy/internal/fa;->e:Lcom/tapjoy/internal/fb;

    .line 57
    iput-object p2, p0, Lcom/tapjoy/internal/fa;->f:Ljava/lang/String;

    .line 58
    iput-object p3, p0, Lcom/tapjoy/internal/fa;->g:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 74
    :cond_0
    instance-of v1, p1, Lcom/tapjoy/internal/fa;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 75
    :cond_1
    check-cast p1, Lcom/tapjoy/internal/fa;

    .line 76
    invoke-virtual {p0}, Lcom/tapjoy/internal/ek;->a()Lcom/tapjoy/internal/iy;

    move-result-object v1

    invoke-virtual {p1}, Lcom/tapjoy/internal/ek;->a()Lcom/tapjoy/internal/iy;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/tapjoy/internal/iy;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tapjoy/internal/fa;->e:Lcom/tapjoy/internal/fb;

    iget-object v3, p1, Lcom/tapjoy/internal/fa;->e:Lcom/tapjoy/internal/fb;

    .line 77
    invoke-virtual {v1, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tapjoy/internal/fa;->f:Ljava/lang/String;

    iget-object v3, p1, Lcom/tapjoy/internal/fa;->f:Ljava/lang/String;

    .line 78
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tapjoy/internal/fa;->g:Ljava/lang/String;

    iget-object p1, p1, Lcom/tapjoy/internal/fa;->g:Ljava/lang/String;

    .line 79
    invoke-static {v1, p1}, Lcom/tapjoy/internal/er;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 2

    .line 84
    iget v0, p0, Lcom/tapjoy/internal/ek;->b:I

    if-nez v0, :cond_1

    .line 86
    invoke-virtual {p0}, Lcom/tapjoy/internal/ek;->a()Lcom/tapjoy/internal/iy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/iy;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    .line 87
    iget-object v1, p0, Lcom/tapjoy/internal/fa;->e:Lcom/tapjoy/internal/fb;

    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 88
    iget-object v1, p0, Lcom/tapjoy/internal/fa;->f:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 89
    iget-object v1, p0, Lcom/tapjoy/internal/fa;->g:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    .line 90
    iput v0, p0, Lcom/tapjoy/internal/ek;->b:I

    :cond_1
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ", type="

    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tapjoy/internal/fa;->e:Lcom/tapjoy/internal/fb;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", name="

    .line 99
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tapjoy/internal/fa;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    iget-object v1, p0, Lcom/tapjoy/internal/fa;->g:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, ", category="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tapjoy/internal/fa;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x2

    const-string v3, "EventGroup{"

    .line 101
    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
