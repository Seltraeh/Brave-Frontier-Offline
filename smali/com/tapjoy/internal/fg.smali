.class public final Lcom/tapjoy/internal/fg;
.super Lcom/tapjoy/internal/ek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapjoy/internal/fg$b;,
        Lcom/tapjoy/internal/fg$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tapjoy/internal/ek<",
        "Lcom/tapjoy/internal/fg;",
        "Lcom/tapjoy/internal/fg$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final c:Lcom/tapjoy/internal/em;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tapjoy/internal/em<",
            "Lcom/tapjoy/internal/fg;",
            ">;"
        }
    .end annotation
.end field

.field public static final d:Ljava/lang/Integer;

.field public static final e:Ljava/lang/Double;

.field public static final f:Ljava/lang/Integer;

.field public static final g:Ljava/lang/Long;


# instance fields
.field public final h:Ljava/lang/String;

.field public final i:Ljava/lang/Integer;

.field public final j:Ljava/lang/Double;

.field public final k:Ljava/lang/String;

.field public final l:Ljava/lang/String;

.field public final m:Ljava/lang/String;

.field public final n:Ljava/lang/String;

.field public final o:Ljava/lang/String;

.field public final p:Ljava/lang/Integer;

.field public final q:Ljava/lang/Long;

.field public final r:Ljava/lang/String;

.field public final s:Ljava/lang/String;

.field public final t:Ljava/lang/String;

.field public final u:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 23
    new-instance v0, Lcom/tapjoy/internal/fg$b;

    invoke-direct {v0}, Lcom/tapjoy/internal/fg$b;-><init>()V

    sput-object v0, Lcom/tapjoy/internal/fg;->c:Lcom/tapjoy/internal/em;

    const/4 v0, 0x1

    .line 29
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/tapjoy/internal/fg;->d:Ljava/lang/Integer;

    const-wide/16 v0, 0x0

    .line 31
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    sput-object v0, Lcom/tapjoy/internal/fg;->e:Ljava/lang/Double;

    const/4 v0, 0x0

    .line 43
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/tapjoy/internal/fg;->f:Ljava/lang/Integer;

    const-wide/16 v0, 0x0

    .line 45
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/tapjoy/internal/fg;->g:Ljava/lang/Long;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tapjoy/internal/iy;)V
    .locals 3

    move-object v0, p0

    .line 145
    sget-object v1, Lcom/tapjoy/internal/fg;->c:Lcom/tapjoy/internal/em;

    move-object/from16 v2, p15

    invoke-direct {p0, v1, v2}, Lcom/tapjoy/internal/ek;-><init>(Lcom/tapjoy/internal/em;Lcom/tapjoy/internal/iy;)V

    move-object v1, p1

    .line 146
    iput-object v1, v0, Lcom/tapjoy/internal/fg;->h:Ljava/lang/String;

    move-object v1, p2

    .line 147
    iput-object v1, v0, Lcom/tapjoy/internal/fg;->i:Ljava/lang/Integer;

    move-object v1, p3

    .line 148
    iput-object v1, v0, Lcom/tapjoy/internal/fg;->j:Ljava/lang/Double;

    move-object v1, p4

    .line 149
    iput-object v1, v0, Lcom/tapjoy/internal/fg;->k:Ljava/lang/String;

    move-object v1, p5

    .line 150
    iput-object v1, v0, Lcom/tapjoy/internal/fg;->l:Ljava/lang/String;

    move-object v1, p6

    .line 151
    iput-object v1, v0, Lcom/tapjoy/internal/fg;->m:Ljava/lang/String;

    move-object v1, p7

    .line 152
    iput-object v1, v0, Lcom/tapjoy/internal/fg;->n:Ljava/lang/String;

    move-object v1, p8

    .line 153
    iput-object v1, v0, Lcom/tapjoy/internal/fg;->o:Ljava/lang/String;

    move-object v1, p9

    .line 154
    iput-object v1, v0, Lcom/tapjoy/internal/fg;->p:Ljava/lang/Integer;

    move-object v1, p10

    .line 155
    iput-object v1, v0, Lcom/tapjoy/internal/fg;->q:Ljava/lang/Long;

    move-object v1, p11

    .line 156
    iput-object v1, v0, Lcom/tapjoy/internal/fg;->r:Ljava/lang/String;

    move-object v1, p12

    .line 157
    iput-object v1, v0, Lcom/tapjoy/internal/fg;->s:Ljava/lang/String;

    move-object/from16 v1, p13

    .line 158
    iput-object v1, v0, Lcom/tapjoy/internal/fg;->t:Ljava/lang/String;

    move-object/from16 v1, p14

    .line 159
    iput-object v1, v0, Lcom/tapjoy/internal/fg;->u:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 186
    :cond_0
    instance-of v1, p1, Lcom/tapjoy/internal/fg;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 187
    :cond_1
    check-cast p1, Lcom/tapjoy/internal/fg;

    .line 188
    invoke-virtual {p0}, Lcom/tapjoy/internal/ek;->a()Lcom/tapjoy/internal/iy;

    move-result-object v1

    invoke-virtual {p1}, Lcom/tapjoy/internal/ek;->a()Lcom/tapjoy/internal/iy;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/tapjoy/internal/iy;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tapjoy/internal/fg;->h:Ljava/lang/String;

    iget-object v3, p1, Lcom/tapjoy/internal/fg;->h:Ljava/lang/String;

    .line 189
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tapjoy/internal/fg;->i:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/tapjoy/internal/fg;->i:Ljava/lang/Integer;

    .line 190
    invoke-static {v1, v3}, Lcom/tapjoy/internal/er;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tapjoy/internal/fg;->j:Ljava/lang/Double;

    iget-object v3, p1, Lcom/tapjoy/internal/fg;->j:Ljava/lang/Double;

    .line 191
    invoke-static {v1, v3}, Lcom/tapjoy/internal/er;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tapjoy/internal/fg;->k:Ljava/lang/String;

    iget-object v3, p1, Lcom/tapjoy/internal/fg;->k:Ljava/lang/String;

    .line 192
    invoke-static {v1, v3}, Lcom/tapjoy/internal/er;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tapjoy/internal/fg;->l:Ljava/lang/String;

    iget-object v3, p1, Lcom/tapjoy/internal/fg;->l:Ljava/lang/String;

    .line 193
    invoke-static {v1, v3}, Lcom/tapjoy/internal/er;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tapjoy/internal/fg;->m:Ljava/lang/String;

    iget-object v3, p1, Lcom/tapjoy/internal/fg;->m:Ljava/lang/String;

    .line 194
    invoke-static {v1, v3}, Lcom/tapjoy/internal/er;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tapjoy/internal/fg;->n:Ljava/lang/String;

    iget-object v3, p1, Lcom/tapjoy/internal/fg;->n:Ljava/lang/String;

    .line 195
    invoke-static {v1, v3}, Lcom/tapjoy/internal/er;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tapjoy/internal/fg;->o:Ljava/lang/String;

    iget-object v3, p1, Lcom/tapjoy/internal/fg;->o:Ljava/lang/String;

    .line 196
    invoke-static {v1, v3}, Lcom/tapjoy/internal/er;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tapjoy/internal/fg;->p:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/tapjoy/internal/fg;->p:Ljava/lang/Integer;

    .line 197
    invoke-static {v1, v3}, Lcom/tapjoy/internal/er;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tapjoy/internal/fg;->q:Ljava/lang/Long;

    iget-object v3, p1, Lcom/tapjoy/internal/fg;->q:Ljava/lang/Long;

    .line 198
    invoke-static {v1, v3}, Lcom/tapjoy/internal/er;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tapjoy/internal/fg;->r:Ljava/lang/String;

    iget-object v3, p1, Lcom/tapjoy/internal/fg;->r:Ljava/lang/String;

    .line 199
    invoke-static {v1, v3}, Lcom/tapjoy/internal/er;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tapjoy/internal/fg;->s:Ljava/lang/String;

    iget-object v3, p1, Lcom/tapjoy/internal/fg;->s:Ljava/lang/String;

    .line 200
    invoke-static {v1, v3}, Lcom/tapjoy/internal/er;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tapjoy/internal/fg;->t:Ljava/lang/String;

    iget-object v3, p1, Lcom/tapjoy/internal/fg;->t:Ljava/lang/String;

    .line 201
    invoke-static {v1, v3}, Lcom/tapjoy/internal/er;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tapjoy/internal/fg;->u:Ljava/lang/String;

    iget-object p1, p1, Lcom/tapjoy/internal/fg;->u:Ljava/lang/String;

    .line 202
    invoke-static {v1, p1}, Lcom/tapjoy/internal/er;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 3

    .line 207
    iget v0, p0, Lcom/tapjoy/internal/ek;->b:I

    if-nez v0, :cond_d

    .line 209
    invoke-virtual {p0}, Lcom/tapjoy/internal/ek;->a()Lcom/tapjoy/internal/iy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/iy;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    .line 210
    iget-object v1, p0, Lcom/tapjoy/internal/fg;->h:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 211
    iget-object v1, p0, Lcom/tapjoy/internal/fg;->i:Ljava/lang/Integer;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 212
    iget-object v1, p0, Lcom/tapjoy/internal/fg;->j:Ljava/lang/Double;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Double;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 213
    iget-object v1, p0, Lcom/tapjoy/internal/fg;->k:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 214
    iget-object v1, p0, Lcom/tapjoy/internal/fg;->l:Ljava/lang/String;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 215
    iget-object v1, p0, Lcom/tapjoy/internal/fg;->m:Ljava/lang/String;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_4

    :cond_4
    const/4 v1, 0x0

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 216
    iget-object v1, p0, Lcom/tapjoy/internal/fg;->n:Ljava/lang/String;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_5

    :cond_5
    const/4 v1, 0x0

    :goto_5
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 217
    iget-object v1, p0, Lcom/tapjoy/internal/fg;->o:Ljava/lang/String;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_6

    :cond_6
    const/4 v1, 0x0

    :goto_6
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 218
    iget-object v1, p0, Lcom/tapjoy/internal/fg;->p:Ljava/lang/Integer;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    goto :goto_7

    :cond_7
    const/4 v1, 0x0

    :goto_7
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 219
    iget-object v1, p0, Lcom/tapjoy/internal/fg;->q:Ljava/lang/Long;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Ljava/lang/Long;->hashCode()I

    move-result v1

    goto :goto_8

    :cond_8
    const/4 v1, 0x0

    :goto_8
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 220
    iget-object v1, p0, Lcom/tapjoy/internal/fg;->r:Ljava/lang/String;

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_9

    :cond_9
    const/4 v1, 0x0

    :goto_9
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 221
    iget-object v1, p0, Lcom/tapjoy/internal/fg;->s:Ljava/lang/String;

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_a

    :cond_a
    const/4 v1, 0x0

    :goto_a
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 222
    iget-object v1, p0, Lcom/tapjoy/internal/fg;->t:Ljava/lang/String;

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_b

    :cond_b
    const/4 v1, 0x0

    :goto_b
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 223
    iget-object v1, p0, Lcom/tapjoy/internal/fg;->u:Ljava/lang/String;

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :cond_c
    add-int/2addr v0, v2

    .line 224
    iput v0, p0, Lcom/tapjoy/internal/ek;->b:I

    :cond_d
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 231
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ", productId="

    .line 232
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tapjoy/internal/fg;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    iget-object v1, p0, Lcom/tapjoy/internal/fg;->i:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    const-string v1, ", productQuantity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tapjoy/internal/fg;->i:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 234
    :cond_0
    iget-object v1, p0, Lcom/tapjoy/internal/fg;->j:Ljava/lang/Double;

    if-eqz v1, :cond_1

    const-string v1, ", productPrice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tapjoy/internal/fg;->j:Ljava/lang/Double;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 235
    :cond_1
    iget-object v1, p0, Lcom/tapjoy/internal/fg;->k:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v1, ", productPriceCurrency="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tapjoy/internal/fg;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    :cond_2
    iget-object v1, p0, Lcom/tapjoy/internal/fg;->l:Ljava/lang/String;

    if-eqz v1, :cond_3

    const-string v1, ", productType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tapjoy/internal/fg;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    :cond_3
    iget-object v1, p0, Lcom/tapjoy/internal/fg;->m:Ljava/lang/String;

    if-eqz v1, :cond_4

    const-string v1, ", productTitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tapjoy/internal/fg;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    :cond_4
    iget-object v1, p0, Lcom/tapjoy/internal/fg;->n:Ljava/lang/String;

    if-eqz v1, :cond_5

    const-string v1, ", productDescription="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tapjoy/internal/fg;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    :cond_5
    iget-object v1, p0, Lcom/tapjoy/internal/fg;->o:Ljava/lang/String;

    if-eqz v1, :cond_6

    const-string v1, ", transactionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tapjoy/internal/fg;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    :cond_6
    iget-object v1, p0, Lcom/tapjoy/internal/fg;->p:Ljava/lang/Integer;

    if-eqz v1, :cond_7

    const-string v1, ", transactionState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tapjoy/internal/fg;->p:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 241
    :cond_7
    iget-object v1, p0, Lcom/tapjoy/internal/fg;->q:Ljava/lang/Long;

    if-eqz v1, :cond_8

    const-string v1, ", transactionDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tapjoy/internal/fg;->q:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 242
    :cond_8
    iget-object v1, p0, Lcom/tapjoy/internal/fg;->r:Ljava/lang/String;

    if-eqz v1, :cond_9

    const-string v1, ", campaignId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tapjoy/internal/fg;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    :cond_9
    iget-object v1, p0, Lcom/tapjoy/internal/fg;->s:Ljava/lang/String;

    if-eqz v1, :cond_a

    const-string v1, ", currencyPrice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tapjoy/internal/fg;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    :cond_a
    iget-object v1, p0, Lcom/tapjoy/internal/fg;->t:Ljava/lang/String;

    if-eqz v1, :cond_b

    const-string v1, ", receipt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tapjoy/internal/fg;->t:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    :cond_b
    iget-object v1, p0, Lcom/tapjoy/internal/fg;->u:Ljava/lang/String;

    if-eqz v1, :cond_c

    const-string v1, ", signature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tapjoy/internal/fg;->u:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c
    const/4 v1, 0x0

    const/4 v2, 0x2

    const-string v3, "Purchase{"

    .line 246
    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
