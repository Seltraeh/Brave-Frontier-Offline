.class public final Lcom/tapjoy/internal/bj;
.super Lcom/tapjoy/internal/bi;
.source "SourceFile"


# static fields
.field public static final a:Lcom/tapjoy/internal/bi$a;


# instance fields
.field private final b:Lcom/tapjoy/internal/ce;

.field private final c:Ljava/io/Reader;

.field private d:Z

.field private final e:[C

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tapjoy/internal/bl;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lcom/tapjoy/internal/bn;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:I

.field private o:I

.field private p:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 193
    new-instance v0, Lcom/tapjoy/internal/bj$1;

    invoke-direct {v0}, Lcom/tapjoy/internal/bj$1;-><init>()V

    sput-object v0, Lcom/tapjoy/internal/bj;->a:Lcom/tapjoy/internal/bi$a;

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .locals 2

    .line 260
    invoke-direct {p0}, Lcom/tapjoy/internal/bi;-><init>()V

    .line 208
    new-instance v0, Lcom/tapjoy/internal/ce;

    invoke-direct {v0}, Lcom/tapjoy/internal/ce;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/internal/bj;->b:Lcom/tapjoy/internal/ce;

    const/4 v0, 0x0

    .line 214
    iput-boolean v0, p0, Lcom/tapjoy/internal/bj;->d:Z

    const/16 v1, 0x400

    new-array v1, v1, [C

    .line 222
    iput-object v1, p0, Lcom/tapjoy/internal/bj;->e:[C

    .line 223
    iput v0, p0, Lcom/tapjoy/internal/bj;->f:I

    .line 224
    iput v0, p0, Lcom/tapjoy/internal/bj;->g:I

    const/4 v1, 0x1

    .line 229
    iput v1, p0, Lcom/tapjoy/internal/bj;->h:I

    .line 230
    iput v1, p0, Lcom/tapjoy/internal/bj;->i:I

    .line 232
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/tapjoy/internal/bj;->j:Ljava/util/List;

    .line 234
    sget-object v1, Lcom/tapjoy/internal/bl;->f:Lcom/tapjoy/internal/bl;

    invoke-direct {p0, v1}, Lcom/tapjoy/internal/bj;->a(Lcom/tapjoy/internal/bl;)V

    .line 255
    iput-boolean v0, p0, Lcom/tapjoy/internal/bj;->p:Z

    if-eqz p1, :cond_0

    .line 264
    iput-object p1, p0, Lcom/tapjoy/internal/bj;->c:Ljava/io/Reader;

    return-void

    .line 262
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "in == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private A()V
    .locals 3

    .line 897
    :cond_0
    iget v0, p0, Lcom/tapjoy/internal/bj;->f:I

    iget v1, p0, Lcom/tapjoy/internal/bj;->g:I

    if-lt v0, v1, :cond_1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/tapjoy/internal/bj;->a(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 898
    :cond_1
    iget-object v0, p0, Lcom/tapjoy/internal/bj;->e:[C

    iget v1, p0, Lcom/tapjoy/internal/bj;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/tapjoy/internal/bj;->f:I

    aget-char v0, v0, v1

    const/16 v1, 0xd

    if-eq v0, v1, :cond_2

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    :cond_2
    return-void
.end method

.method private B()C
    .locals 4

    .line 1063
    iget v0, p0, Lcom/tapjoy/internal/bj;->f:I

    iget v1, p0, Lcom/tapjoy/internal/bj;->g:I

    const-string v2, "Unterminated escape sequence"

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/tapjoy/internal/bj;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1064
    :cond_0
    invoke-direct {p0, v2}, Lcom/tapjoy/internal/bj;->e(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 1067
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/tapjoy/internal/bj;->e:[C

    iget v1, p0, Lcom/tapjoy/internal/bj;->f:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lcom/tapjoy/internal/bj;->f:I

    aget-char v0, v0, v1

    const/16 v1, 0x62

    if-eq v0, v1, :cond_9

    const/16 v1, 0x66

    if-eq v0, v1, :cond_8

    const/16 v1, 0x6e

    if-eq v0, v1, :cond_7

    const/16 v1, 0x72

    if-eq v0, v1, :cond_6

    const/16 v1, 0x74

    if-eq v0, v1, :cond_5

    const/16 v1, 0x75

    if-eq v0, v1, :cond_2

    return v0

    :cond_2
    const/4 v0, 0x4

    add-int/2addr v3, v0

    .line 1070
    iget v1, p0, Lcom/tapjoy/internal/bj;->g:I

    if-le v3, v1, :cond_4

    invoke-direct {p0, v0}, Lcom/tapjoy/internal/bj;->a(I)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    .line 1071
    :cond_3
    invoke-direct {p0, v2}, Lcom/tapjoy/internal/bj;->e(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 1073
    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/tapjoy/internal/bj;->b:Lcom/tapjoy/internal/ce;

    iget-object v2, p0, Lcom/tapjoy/internal/bj;->e:[C

    iget v3, p0, Lcom/tapjoy/internal/bj;->f:I

    invoke-virtual {v1, v2, v3, v0}, Lcom/tapjoy/internal/ce;->a([CII)Ljava/lang/String;

    move-result-object v1

    .line 1074
    iget v2, p0, Lcom/tapjoy/internal/bj;->f:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/tapjoy/internal/bj;->f:I

    const/16 v0, 0x10

    .line 1075
    invoke-static {v1, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    int-to-char v0, v0

    return v0

    :cond_5
    const/16 v0, 0x9

    return v0

    :cond_6
    const/16 v0, 0xd

    return v0

    :cond_7
    const/16 v0, 0xa

    return v0

    :cond_8
    const/16 v0, 0xc

    return v0

    :cond_9
    const/16 v0, 0x8

    return v0
.end method

.method private C()Lcom/tapjoy/internal/bn;
    .locals 2

    const/4 v0, 0x1

    .line 1104
    invoke-direct {p0, v0}, Lcom/tapjoy/internal/bj;->c(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/bj;->m:Ljava/lang/String;

    .line 1105
    iget v0, p0, Lcom/tapjoy/internal/bj;->o:I

    if-eqz v0, :cond_1

    .line 1108
    invoke-direct {p0}, Lcom/tapjoy/internal/bj;->D()Lcom/tapjoy/internal/bn;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/bj;->k:Lcom/tapjoy/internal/bn;

    .line 1109
    sget-object v1, Lcom/tapjoy/internal/bn;->f:Lcom/tapjoy/internal/bn;

    if-ne v0, v1, :cond_0

    .line 1110
    invoke-direct {p0}, Lcom/tapjoy/internal/bj;->z()V

    .line 1112
    :cond_0
    iget-object v0, p0, Lcom/tapjoy/internal/bj;->k:Lcom/tapjoy/internal/bn;

    return-object v0

    :cond_1
    const-string v0, "Expected literal value"

    .line 1106
    invoke-direct {p0, v0}, Lcom/tapjoy/internal/bj;->e(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method private D()Lcom/tapjoy/internal/bn;
    .locals 11

    .line 1119
    iget v0, p0, Lcom/tapjoy/internal/bj;->n:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1121
    sget-object v0, Lcom/tapjoy/internal/bn;->f:Lcom/tapjoy/internal/bn;

    return-object v0

    .line 1122
    :cond_0
    iget v1, p0, Lcom/tapjoy/internal/bj;->o:I

    const/16 v2, 0x55

    const/16 v3, 0x75

    const/16 v4, 0x4c

    const/16 v5, 0x6c

    const/4 v6, 0x4

    if-ne v1, v6, :cond_5

    const/16 v1, 0x6e

    iget-object v7, p0, Lcom/tapjoy/internal/bj;->e:[C

    aget-char v8, v7, v0

    if-eq v1, v8, :cond_1

    const/16 v1, 0x4e

    aget-char v0, v7, v0

    if-ne v1, v0, :cond_5

    :cond_1
    iget-object v0, p0, Lcom/tapjoy/internal/bj;->e:[C

    iget v1, p0, Lcom/tapjoy/internal/bj;->n:I

    add-int/lit8 v7, v1, 0x1

    aget-char v7, v0, v7

    if-eq v3, v7, :cond_2

    add-int/lit8 v1, v1, 0x1

    aget-char v0, v0, v1

    if-ne v2, v0, :cond_5

    :cond_2
    iget-object v0, p0, Lcom/tapjoy/internal/bj;->e:[C

    iget v1, p0, Lcom/tapjoy/internal/bj;->n:I

    add-int/lit8 v7, v1, 0x2

    aget-char v7, v0, v7

    if-eq v5, v7, :cond_3

    add-int/lit8 v1, v1, 0x2

    aget-char v0, v0, v1

    if-ne v4, v0, :cond_5

    :cond_3
    iget-object v0, p0, Lcom/tapjoy/internal/bj;->e:[C

    iget v1, p0, Lcom/tapjoy/internal/bj;->n:I

    add-int/lit8 v7, v1, 0x3

    aget-char v7, v0, v7

    if-eq v5, v7, :cond_4

    add-int/lit8 v1, v1, 0x3

    aget-char v0, v0, v1

    if-ne v4, v0, :cond_5

    :cond_4
    const-string v0, "null"

    .line 1126
    iput-object v0, p0, Lcom/tapjoy/internal/bj;->m:Ljava/lang/String;

    .line 1127
    sget-object v0, Lcom/tapjoy/internal/bn;->i:Lcom/tapjoy/internal/bn;

    return-object v0

    .line 1128
    :cond_5
    iget v0, p0, Lcom/tapjoy/internal/bj;->o:I

    const/16 v1, 0x45

    const/16 v7, 0x65

    if-ne v0, v6, :cond_a

    const/16 v0, 0x74

    iget-object v8, p0, Lcom/tapjoy/internal/bj;->e:[C

    iget v9, p0, Lcom/tapjoy/internal/bj;->n:I

    aget-char v10, v8, v9

    if-eq v0, v10, :cond_6

    const/16 v0, 0x54

    aget-char v8, v8, v9

    if-ne v0, v8, :cond_a

    :cond_6
    const/16 v0, 0x72

    iget-object v8, p0, Lcom/tapjoy/internal/bj;->e:[C

    iget v9, p0, Lcom/tapjoy/internal/bj;->n:I

    add-int/lit8 v10, v9, 0x1

    aget-char v10, v8, v10

    if-eq v0, v10, :cond_7

    const/16 v0, 0x52

    add-int/lit8 v9, v9, 0x1

    aget-char v8, v8, v9

    if-ne v0, v8, :cond_a

    :cond_7
    iget-object v0, p0, Lcom/tapjoy/internal/bj;->e:[C

    iget v8, p0, Lcom/tapjoy/internal/bj;->n:I

    add-int/lit8 v9, v8, 0x2

    aget-char v9, v0, v9

    if-eq v3, v9, :cond_8

    add-int/lit8 v8, v8, 0x2

    aget-char v0, v0, v8

    if-ne v2, v0, :cond_a

    :cond_8
    iget-object v0, p0, Lcom/tapjoy/internal/bj;->e:[C

    iget v2, p0, Lcom/tapjoy/internal/bj;->n:I

    add-int/lit8 v3, v2, 0x3

    aget-char v3, v0, v3

    if-eq v7, v3, :cond_9

    add-int/lit8 v2, v2, 0x3

    aget-char v0, v0, v2

    if-ne v1, v0, :cond_a

    :cond_9
    const-string v0, "true"

    .line 1132
    iput-object v0, p0, Lcom/tapjoy/internal/bj;->m:Ljava/lang/String;

    .line 1133
    sget-object v0, Lcom/tapjoy/internal/bn;->h:Lcom/tapjoy/internal/bn;

    return-object v0

    .line 1134
    :cond_a
    iget v0, p0, Lcom/tapjoy/internal/bj;->o:I

    const/4 v2, 0x5

    if-ne v0, v2, :cond_10

    const/16 v0, 0x66

    iget-object v2, p0, Lcom/tapjoy/internal/bj;->e:[C

    iget v3, p0, Lcom/tapjoy/internal/bj;->n:I

    aget-char v8, v2, v3

    if-eq v0, v8, :cond_b

    const/16 v0, 0x46

    aget-char v2, v2, v3

    if-ne v0, v2, :cond_10

    :cond_b
    const/16 v0, 0x61

    iget-object v2, p0, Lcom/tapjoy/internal/bj;->e:[C

    iget v3, p0, Lcom/tapjoy/internal/bj;->n:I

    add-int/lit8 v8, v3, 0x1

    aget-char v8, v2, v8

    if-eq v0, v8, :cond_c

    const/16 v0, 0x41

    add-int/lit8 v3, v3, 0x1

    aget-char v2, v2, v3

    if-ne v0, v2, :cond_10

    :cond_c
    iget-object v0, p0, Lcom/tapjoy/internal/bj;->e:[C

    iget v2, p0, Lcom/tapjoy/internal/bj;->n:I

    add-int/lit8 v3, v2, 0x2

    aget-char v3, v0, v3

    if-eq v5, v3, :cond_d

    add-int/lit8 v2, v2, 0x2

    aget-char v0, v0, v2

    if-ne v4, v0, :cond_10

    :cond_d
    const/16 v0, 0x73

    iget-object v2, p0, Lcom/tapjoy/internal/bj;->e:[C

    iget v3, p0, Lcom/tapjoy/internal/bj;->n:I

    add-int/lit8 v4, v3, 0x3

    aget-char v4, v2, v4

    if-eq v0, v4, :cond_e

    const/16 v0, 0x53

    add-int/lit8 v3, v3, 0x3

    aget-char v2, v2, v3

    if-ne v0, v2, :cond_10

    :cond_e
    iget-object v0, p0, Lcom/tapjoy/internal/bj;->e:[C

    iget v2, p0, Lcom/tapjoy/internal/bj;->n:I

    add-int/lit8 v3, v2, 0x4

    aget-char v3, v0, v3

    if-eq v7, v3, :cond_f

    add-int/2addr v2, v6

    aget-char v0, v0, v2

    if-ne v1, v0, :cond_10

    :cond_f
    const-string v0, "false"

    .line 1139
    iput-object v0, p0, Lcom/tapjoy/internal/bj;->m:Ljava/lang/String;

    .line 1140
    sget-object v0, Lcom/tapjoy/internal/bn;->h:Lcom/tapjoy/internal/bn;

    return-object v0

    .line 1142
    :cond_10
    iget-object v0, p0, Lcom/tapjoy/internal/bj;->b:Lcom/tapjoy/internal/ce;

    iget-object v1, p0, Lcom/tapjoy/internal/bj;->e:[C

    iget v2, p0, Lcom/tapjoy/internal/bj;->n:I

    iget v3, p0, Lcom/tapjoy/internal/bj;->o:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/tapjoy/internal/ce;->a([CII)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/bj;->m:Ljava/lang/String;

    .line 1143
    iget-object v0, p0, Lcom/tapjoy/internal/bj;->e:[C

    iget v1, p0, Lcom/tapjoy/internal/bj;->n:I

    iget v2, p0, Lcom/tapjoy/internal/bj;->o:I

    invoke-static {v0, v1, v2}, Lcom/tapjoy/internal/bj;->a([CII)Lcom/tapjoy/internal/bn;

    move-result-object v0

    return-object v0
.end method

.method private a(Z)Lcom/tapjoy/internal/bn;
    .locals 4

    const/16 v0, 0x5d

    const/16 v1, 0x3b

    const/16 v2, 0x2c

    if-eqz p1, :cond_0

    .line 638
    sget-object v3, Lcom/tapjoy/internal/bl;->b:Lcom/tapjoy/internal/bl;

    invoke-direct {p0, v3}, Lcom/tapjoy/internal/bj;->b(Lcom/tapjoy/internal/bl;)V

    goto :goto_0

    .line 641
    :cond_0
    invoke-direct {p0}, Lcom/tapjoy/internal/bj;->y()I

    move-result v3

    if-eq v3, v2, :cond_3

    if-eq v3, v1, :cond_2

    if-ne v3, v0, :cond_1

    .line 643
    invoke-direct {p0}, Lcom/tapjoy/internal/bj;->u()Lcom/tapjoy/internal/bl;

    .line 644
    sget-object p1, Lcom/tapjoy/internal/bn;->b:Lcom/tapjoy/internal/bn;

    iput-object p1, p0, Lcom/tapjoy/internal/bj;->k:Lcom/tapjoy/internal/bn;

    return-object p1

    :cond_1
    const-string p1, "Unterminated array"

    .line 650
    invoke-direct {p0, p1}, Lcom/tapjoy/internal/bj;->e(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    .line 646
    :cond_2
    invoke-direct {p0}, Lcom/tapjoy/internal/bj;->z()V

    .line 654
    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/tapjoy/internal/bj;->y()I

    move-result v3

    if-eq v3, v2, :cond_5

    if-eq v3, v1, :cond_5

    if-eq v3, v0, :cond_4

    .line 669
    iget p1, p0, Lcom/tapjoy/internal/bj;->f:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/tapjoy/internal/bj;->f:I

    .line 670
    invoke-direct {p0}, Lcom/tapjoy/internal/bj;->v()Lcom/tapjoy/internal/bn;

    move-result-object p1

    return-object p1

    :cond_4
    if-eqz p1, :cond_5

    .line 657
    invoke-direct {p0}, Lcom/tapjoy/internal/bj;->u()Lcom/tapjoy/internal/bl;

    .line 658
    sget-object p1, Lcom/tapjoy/internal/bn;->b:Lcom/tapjoy/internal/bn;

    iput-object p1, p0, Lcom/tapjoy/internal/bj;->k:Lcom/tapjoy/internal/bn;

    return-object p1

    .line 664
    :cond_5
    invoke-direct {p0}, Lcom/tapjoy/internal/bj;->z()V

    .line 665
    iget p1, p0, Lcom/tapjoy/internal/bj;->f:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/tapjoy/internal/bj;->f:I

    const-string p1, "null"

    .line 666
    iput-object p1, p0, Lcom/tapjoy/internal/bj;->m:Ljava/lang/String;

    .line 667
    sget-object p1, Lcom/tapjoy/internal/bn;->i:Lcom/tapjoy/internal/bn;

    iput-object p1, p0, Lcom/tapjoy/internal/bj;->k:Lcom/tapjoy/internal/bn;

    return-object p1
.end method

.method private static a([CII)Lcom/tapjoy/internal/bn;
    .locals 7

    .line 1155
    aget-char v0, p0, p1

    const/16 v1, 0x2d

    if-ne v0, v1, :cond_0

    add-int/lit8 v0, p1, 0x1

    .line 1158
    aget-char v2, p0, v0

    move v6, v2

    move v2, v0

    move v0, v6

    goto :goto_0

    :cond_0
    move v2, p1

    :goto_0
    const/16 v3, 0x39

    const/16 v4, 0x30

    if-ne v0, v4, :cond_1

    add-int/lit8 v2, v2, 0x1

    .line 1162
    aget-char v0, p0, v2

    goto :goto_2

    :cond_1
    const/16 v5, 0x31

    if-lt v0, v5, :cond_a

    if-gt v0, v3, :cond_a

    add-int/lit8 v2, v2, 0x1

    .line 1164
    aget-char v0, p0, v2

    :goto_1
    if-lt v0, v4, :cond_2

    if-gt v0, v3, :cond_2

    add-int/lit8 v2, v2, 0x1

    .line 1166
    aget-char v0, p0, v2

    goto :goto_1

    :cond_2
    :goto_2
    const/16 v5, 0x2e

    if-ne v0, v5, :cond_3

    add-int/lit8 v2, v2, 0x1

    .line 1173
    aget-char v0, p0, v2

    :goto_3
    if-lt v0, v4, :cond_3

    if-gt v0, v3, :cond_3

    add-int/lit8 v2, v2, 0x1

    .line 1175
    aget-char v0, p0, v2

    goto :goto_3

    :cond_3
    const/16 v5, 0x65

    if-eq v0, v5, :cond_4

    const/16 v5, 0x45

    if-ne v0, v5, :cond_7

    :cond_4
    add-int/lit8 v2, v2, 0x1

    .line 1180
    aget-char v0, p0, v2

    const/16 v5, 0x2b

    if-eq v0, v5, :cond_5

    if-ne v0, v1, :cond_6

    :cond_5
    add-int/lit8 v2, v2, 0x1

    .line 1182
    aget-char v0, p0, v2

    :cond_6
    if-lt v0, v4, :cond_9

    if-gt v0, v3, :cond_9

    add-int/lit8 v2, v2, 0x1

    .line 1185
    aget-char v0, p0, v2

    :goto_4
    if-lt v0, v4, :cond_7

    if-gt v0, v3, :cond_7

    add-int/lit8 v2, v2, 0x1

    .line 1187
    aget-char v0, p0, v2

    goto :goto_4

    :cond_7
    add-int/2addr p1, p2

    if-ne v2, p1, :cond_8

    .line 1195
    sget-object p0, Lcom/tapjoy/internal/bn;->g:Lcom/tapjoy/internal/bn;

    return-object p0

    .line 1197
    :cond_8
    sget-object p0, Lcom/tapjoy/internal/bn;->f:Lcom/tapjoy/internal/bn;

    return-object p0

    .line 1190
    :cond_9
    sget-object p0, Lcom/tapjoy/internal/bn;->f:Lcom/tapjoy/internal/bn;

    return-object p0

    .line 1169
    :cond_a
    sget-object p0, Lcom/tapjoy/internal/bn;->f:Lcom/tapjoy/internal/bn;

    return-object p0
.end method

.method private a(C)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    .line 932
    :goto_0
    iget v1, p0, Lcom/tapjoy/internal/bj;->f:I

    .line 933
    :cond_0
    :goto_1
    iget v2, p0, Lcom/tapjoy/internal/bj;->f:I

    iget v3, p0, Lcom/tapjoy/internal/bj;->g:I

    const/4 v4, 0x1

    if-ge v2, v3, :cond_5

    .line 934
    iget-object v3, p0, Lcom/tapjoy/internal/bj;->e:[C

    add-int/lit8 v5, v2, 0x1

    iput v5, p0, Lcom/tapjoy/internal/bj;->f:I

    aget-char v2, v3, v2

    if-ne v2, p1, :cond_3

    .line 937
    iget-boolean p1, p0, Lcom/tapjoy/internal/bj;->p:Z

    if-eqz p1, :cond_1

    const-string p1, "skipped!"

    return-object p1

    :cond_1
    if-nez v0, :cond_2

    .line 940
    iget-object p1, p0, Lcom/tapjoy/internal/bj;->b:Lcom/tapjoy/internal/ce;

    sub-int/2addr v5, v1

    sub-int/2addr v5, v4

    invoke-virtual {p1, v3, v1, v5}, Lcom/tapjoy/internal/ce;->a([CII)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    sub-int/2addr v5, v1

    sub-int/2addr v5, v4

    .line 942
    invoke-virtual {v0, v3, v1, v5}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 943
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    const/16 v3, 0x5c

    if-ne v2, v3, :cond_0

    if-nez v0, :cond_4

    .line 948
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 950
    :cond_4
    iget-object v2, p0, Lcom/tapjoy/internal/bj;->e:[C

    iget v3, p0, Lcom/tapjoy/internal/bj;->f:I

    sub-int/2addr v3, v1

    sub-int/2addr v3, v4

    invoke-virtual {v0, v2, v1, v3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 951
    invoke-direct {p0}, Lcom/tapjoy/internal/bj;->B()C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 952
    iget v1, p0, Lcom/tapjoy/internal/bj;->f:I

    goto :goto_1

    :cond_5
    if-nez v0, :cond_6

    .line 957
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 959
    :cond_6
    iget-object v2, p0, Lcom/tapjoy/internal/bj;->e:[C

    iget v3, p0, Lcom/tapjoy/internal/bj;->f:I

    sub-int/2addr v3, v1

    invoke-virtual {v0, v2, v1, v3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 960
    invoke-direct {p0, v4}, Lcom/tapjoy/internal/bj;->a(I)Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_0

    :cond_7
    const-string p1, "Unterminated string"

    .line 962
    invoke-direct {p0, p1}, Lcom/tapjoy/internal/bj;->e(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object p1

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method private a(Lcom/tapjoy/internal/bl;)V
    .locals 1

    .line 626
    iget-object v0, p0, Lcom/tapjoy/internal/bj;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private a(Lcom/tapjoy/internal/bn;)V
    .locals 3

    .line 341
    invoke-virtual {p0}, Lcom/tapjoy/internal/bj;->k()Lcom/tapjoy/internal/bn;

    .line 342
    iget-object v0, p0, Lcom/tapjoy/internal/bj;->k:Lcom/tapjoy/internal/bn;

    if-ne v0, p1, :cond_0

    .line 345
    invoke-direct {p0}, Lcom/tapjoy/internal/bj;->t()Lcom/tapjoy/internal/bn;

    return-void

    .line 343
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " but was "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tapjoy/internal/bj;->k()Lcom/tapjoy/internal/bn;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private a(I)Z
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 774
    :goto_0
    iget v2, p0, Lcom/tapjoy/internal/bj;->f:I

    const/4 v3, 0x1

    if-ge v1, v2, :cond_1

    .line 775
    iget-object v2, p0, Lcom/tapjoy/internal/bj;->e:[C

    aget-char v2, v2, v1

    const/16 v4, 0xa

    if-ne v2, v4, :cond_0

    .line 776
    iget v2, p0, Lcom/tapjoy/internal/bj;->h:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/tapjoy/internal/bj;->h:I

    .line 777
    iput v3, p0, Lcom/tapjoy/internal/bj;->i:I

    goto :goto_1

    .line 779
    :cond_0
    iget v2, p0, Lcom/tapjoy/internal/bj;->i:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/tapjoy/internal/bj;->i:I

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 783
    :cond_1
    iget v1, p0, Lcom/tapjoy/internal/bj;->g:I

    if-eq v1, v2, :cond_2

    sub-int/2addr v1, v2

    .line 784
    iput v1, p0, Lcom/tapjoy/internal/bj;->g:I

    .line 785
    iget-object v4, p0, Lcom/tapjoy/internal/bj;->e:[C

    invoke-static {v4, v2, v4, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2

    .line 787
    :cond_2
    iput v0, p0, Lcom/tapjoy/internal/bj;->g:I

    .line 790
    :goto_2
    iput v0, p0, Lcom/tapjoy/internal/bj;->f:I

    .line 792
    :cond_3
    iget-object v1, p0, Lcom/tapjoy/internal/bj;->c:Ljava/io/Reader;

    iget-object v2, p0, Lcom/tapjoy/internal/bj;->e:[C

    iget v4, p0, Lcom/tapjoy/internal/bj;->g:I

    array-length v5, v2

    sub-int/2addr v5, v4

    invoke-virtual {v1, v2, v4, v5}, Ljava/io/Reader;->read([CII)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_5

    .line 793
    iget v2, p0, Lcom/tapjoy/internal/bj;->g:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/tapjoy/internal/bj;->g:I

    .line 796
    iget v1, p0, Lcom/tapjoy/internal/bj;->h:I

    if-ne v1, v3, :cond_4

    iget v1, p0, Lcom/tapjoy/internal/bj;->i:I

    if-ne v1, v3, :cond_4

    if-lez v2, :cond_4

    iget-object v2, p0, Lcom/tapjoy/internal/bj;->e:[C

    aget-char v2, v2, v0

    const v4, 0xfeff

    if-ne v2, v4, :cond_4

    .line 797
    iget v2, p0, Lcom/tapjoy/internal/bj;->f:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/tapjoy/internal/bj;->f:I

    add-int/lit8 v1, v1, -0x1

    .line 798
    iput v1, p0, Lcom/tapjoy/internal/bj;->i:I

    .line 801
    :cond_4
    iget v1, p0, Lcom/tapjoy/internal/bj;->g:I

    if-lt v1, p1, :cond_3

    return v3

    :cond_5
    return v0
.end method

.method private b(Z)Lcom/tapjoy/internal/bn;
    .locals 2

    const/16 v0, 0x7d

    if-eqz p1, :cond_1

    .line 682
    invoke-direct {p0}, Lcom/tapjoy/internal/bj;->y()I

    move-result p1

    if-eq p1, v0, :cond_0

    .line 687
    iget p1, p0, Lcom/tapjoy/internal/bj;->f:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/tapjoy/internal/bj;->f:I

    goto :goto_0

    .line 684
    :cond_0
    invoke-direct {p0}, Lcom/tapjoy/internal/bj;->u()Lcom/tapjoy/internal/bl;

    .line 685
    sget-object p1, Lcom/tapjoy/internal/bn;->d:Lcom/tapjoy/internal/bn;

    iput-object p1, p0, Lcom/tapjoy/internal/bj;->k:Lcom/tapjoy/internal/bn;

    return-object p1

    .line 690
    :cond_1
    invoke-direct {p0}, Lcom/tapjoy/internal/bj;->y()I

    move-result p1

    const/16 v1, 0x2c

    if-eq p1, v1, :cond_3

    const/16 v1, 0x3b

    if-eq p1, v1, :cond_3

    if-ne p1, v0, :cond_2

    .line 692
    invoke-direct {p0}, Lcom/tapjoy/internal/bj;->u()Lcom/tapjoy/internal/bl;

    .line 693
    sget-object p1, Lcom/tapjoy/internal/bn;->d:Lcom/tapjoy/internal/bn;

    iput-object p1, p0, Lcom/tapjoy/internal/bj;->k:Lcom/tapjoy/internal/bn;

    return-object p1

    :cond_2
    const-string p1, "Unterminated object"

    .line 698
    invoke-direct {p0, p1}, Lcom/tapjoy/internal/bj;->e(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    .line 703
    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/tapjoy/internal/bj;->y()I

    move-result p1

    const/16 v0, 0x22

    if-eq p1, v0, :cond_6

    const/16 v0, 0x27

    if-eq p1, v0, :cond_5

    .line 711
    invoke-direct {p0}, Lcom/tapjoy/internal/bj;->z()V

    .line 712
    iget p1, p0, Lcom/tapjoy/internal/bj;->f:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/tapjoy/internal/bj;->f:I

    const/4 p1, 0x0

    .line 713
    invoke-direct {p0, p1}, Lcom/tapjoy/internal/bj;->c(Z)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tapjoy/internal/bj;->l:Ljava/lang/String;

    .line 714
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_1

    :cond_4
    const-string p1, "Expected name"

    .line 715
    invoke-direct {p0, p1}, Lcom/tapjoy/internal/bj;->e(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    .line 706
    :cond_5
    invoke-direct {p0}, Lcom/tapjoy/internal/bj;->z()V

    :cond_6
    int-to-char p1, p1

    .line 708
    invoke-direct {p0, p1}, Lcom/tapjoy/internal/bj;->a(C)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tapjoy/internal/bj;->l:Ljava/lang/String;

    .line 719
    :goto_1
    sget-object p1, Lcom/tapjoy/internal/bl;->d:Lcom/tapjoy/internal/bl;

    invoke-direct {p0, p1}, Lcom/tapjoy/internal/bj;->b(Lcom/tapjoy/internal/bl;)V

    .line 720
    sget-object p1, Lcom/tapjoy/internal/bn;->e:Lcom/tapjoy/internal/bn;

    iput-object p1, p0, Lcom/tapjoy/internal/bj;->k:Lcom/tapjoy/internal/bn;

    return-object p1
.end method

.method private b(Lcom/tapjoy/internal/bl;)V
    .locals 2

    .line 633
    iget-object v0, p0, Lcom/tapjoy/internal/bj;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private c(Z)Ljava/lang/String;
    .locals 7

    const/4 v0, -0x1

    .line 976
    iput v0, p0, Lcom/tapjoy/internal/bj;->n:I

    const/4 v0, 0x0

    .line 977
    iput v0, p0, Lcom/tapjoy/internal/bj;->o:I

    const/4 v1, 0x0

    move-object v3, v1

    :cond_0
    const/4 v2, 0x0

    .line 981
    :cond_1
    :goto_0
    iget v4, p0, Lcom/tapjoy/internal/bj;->f:I

    add-int v5, v4, v2

    iget v6, p0, Lcom/tapjoy/internal/bj;->g:I

    if-ge v5, v6, :cond_3

    .line 982
    iget-object v5, p0, Lcom/tapjoy/internal/bj;->e:[C

    add-int/2addr v4, v2

    aget-char v4, v5, v4

    const/16 v5, 0x9

    if-eq v4, v5, :cond_4

    const/16 v5, 0xa

    if-eq v4, v5, :cond_4

    const/16 v5, 0xc

    if-eq v4, v5, :cond_4

    const/16 v5, 0xd

    if-eq v4, v5, :cond_4

    const/16 v5, 0x20

    if-eq v4, v5, :cond_4

    const/16 v5, 0x23

    if-eq v4, v5, :cond_2

    const/16 v5, 0x2c

    if-eq v4, v5, :cond_4

    const/16 v5, 0x2f

    if-eq v4, v5, :cond_2

    const/16 v5, 0x3d

    if-eq v4, v5, :cond_2

    const/16 v5, 0x7b

    if-eq v4, v5, :cond_4

    const/16 v5, 0x7d

    if-eq v4, v5, :cond_4

    const/16 v5, 0x3a

    if-eq v4, v5, :cond_4

    const/16 v5, 0x3b

    if-eq v4, v5, :cond_2

    packed-switch v4, :pswitch_data_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 988
    :cond_2
    :pswitch_0
    invoke-direct {p0}, Lcom/tapjoy/internal/bj;->z()V

    goto :goto_1

    .line 1009
    :cond_3
    iget-object v4, p0, Lcom/tapjoy/internal/bj;->e:[C

    array-length v4, v4

    if-ge v2, v4, :cond_5

    add-int/lit8 v4, v2, 0x1

    .line 1010
    invoke-direct {p0, v4}, Lcom/tapjoy/internal/bj;->a(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1013
    iget-object v4, p0, Lcom/tapjoy/internal/bj;->e:[C

    iget v5, p0, Lcom/tapjoy/internal/bj;->g:I

    aput-char v0, v4, v5

    :cond_4
    :goto_1
    :pswitch_1
    move v0, v2

    goto :goto_2

    :cond_5
    if-nez v3, :cond_6

    .line 1020
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1022
    :cond_6
    iget-object v4, p0, Lcom/tapjoy/internal/bj;->e:[C

    iget v5, p0, Lcom/tapjoy/internal/bj;->f:I

    invoke-virtual {v3, v4, v5, v2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1023
    iget v4, p0, Lcom/tapjoy/internal/bj;->o:I

    add-int/2addr v4, v2

    iput v4, p0, Lcom/tapjoy/internal/bj;->o:I

    .line 1024
    iget v4, p0, Lcom/tapjoy/internal/bj;->f:I

    add-int/2addr v4, v2

    iput v4, p0, Lcom/tapjoy/internal/bj;->f:I

    const/4 v2, 0x1

    .line 1026
    invoke-direct {p0, v2}, Lcom/tapjoy/internal/bj;->a(I)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_2
    if-eqz p1, :cond_7

    if-nez v3, :cond_7

    .line 1033
    iget p1, p0, Lcom/tapjoy/internal/bj;->f:I

    iput p1, p0, Lcom/tapjoy/internal/bj;->n:I

    goto :goto_3

    .line 1035
    :cond_7
    iget-boolean p1, p0, Lcom/tapjoy/internal/bj;->p:Z

    if-eqz p1, :cond_8

    const-string v1, "skipped!"

    goto :goto_3

    :cond_8
    if-nez v3, :cond_9

    .line 1038
    iget-object p1, p0, Lcom/tapjoy/internal/bj;->b:Lcom/tapjoy/internal/ce;

    iget-object v1, p0, Lcom/tapjoy/internal/bj;->e:[C

    iget v2, p0, Lcom/tapjoy/internal/bj;->f:I

    invoke-virtual {p1, v1, v2, v0}, Lcom/tapjoy/internal/ce;->a([CII)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 1040
    :cond_9
    iget-object p1, p0, Lcom/tapjoy/internal/bj;->e:[C

    iget v1, p0, Lcom/tapjoy/internal/bj;->f:I

    invoke-virtual {v3, p1, v1, v0}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1041
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1043
    :goto_3
    iget p1, p0, Lcom/tapjoy/internal/bj;->o:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/tapjoy/internal/bj;->o:I

    .line 1044
    iget p1, p0, Lcom/tapjoy/internal/bj;->f:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/tapjoy/internal/bj;->f:I

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x5b
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private d(Ljava/lang/String;)Z
    .locals 4

    .line 906
    :goto_0
    iget v0, p0, Lcom/tapjoy/internal/bj;->f:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/tapjoy/internal/bj;->g:I

    const/4 v2, 0x0

    if-le v0, v1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/tapjoy/internal/bj;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    return v2

    .line 907
    :cond_1
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ge v2, v0, :cond_3

    .line 908
    iget-object v0, p0, Lcom/tapjoy/internal/bj;->e:[C

    iget v3, p0, Lcom/tapjoy/internal/bj;->f:I

    add-int/2addr v3, v2

    aget-char v0, v0, v3

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v0, v3, :cond_2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 906
    :cond_2
    iget v0, p0, Lcom/tapjoy/internal/bj;->f:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/tapjoy/internal/bj;->f:I

    goto :goto_0

    :cond_3
    return v1
.end method

.method private e(Ljava/lang/String;)Ljava/io/IOException;
    .locals 2

    .line 1206
    new-instance v0, Lcom/tapjoy/internal/bp;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " at line "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/tapjoy/internal/bj;->w()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " column "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1207
    invoke-direct {p0}, Lcom/tapjoy/internal/bj;->x()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/tapjoy/internal/bp;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private t()Lcom/tapjoy/internal/bn;
    .locals 2

    .line 405
    invoke-virtual {p0}, Lcom/tapjoy/internal/bj;->k()Lcom/tapjoy/internal/bn;

    .line 407
    iget-object v0, p0, Lcom/tapjoy/internal/bj;->k:Lcom/tapjoy/internal/bn;

    const/4 v1, 0x0

    .line 408
    iput-object v1, p0, Lcom/tapjoy/internal/bj;->k:Lcom/tapjoy/internal/bn;

    .line 409
    iput-object v1, p0, Lcom/tapjoy/internal/bj;->m:Ljava/lang/String;

    .line 410
    iput-object v1, p0, Lcom/tapjoy/internal/bj;->l:Ljava/lang/String;

    return-object v0
.end method

.method private u()Lcom/tapjoy/internal/bl;
    .locals 2

    .line 622
    iget-object v0, p0, Lcom/tapjoy/internal/bj;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/internal/bl;

    return-object v0
.end method

.method private v()Lcom/tapjoy/internal/bn;
    .locals 2

    .line 746
    invoke-direct {p0}, Lcom/tapjoy/internal/bj;->y()I

    move-result v0

    const/16 v1, 0x22

    if-eq v0, v1, :cond_3

    const/16 v1, 0x27

    if-eq v0, v1, :cond_2

    const/16 v1, 0x5b

    if-eq v0, v1, :cond_1

    const/16 v1, 0x7b

    if-eq v0, v1, :cond_0

    .line 763
    iget v0, p0, Lcom/tapjoy/internal/bj;->f:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/tapjoy/internal/bj;->f:I

    .line 764
    invoke-direct {p0}, Lcom/tapjoy/internal/bj;->C()Lcom/tapjoy/internal/bn;

    move-result-object v0

    return-object v0

    .line 749
    :cond_0
    sget-object v0, Lcom/tapjoy/internal/bl;->c:Lcom/tapjoy/internal/bl;

    invoke-direct {p0, v0}, Lcom/tapjoy/internal/bj;->a(Lcom/tapjoy/internal/bl;)V

    .line 750
    sget-object v0, Lcom/tapjoy/internal/bn;->c:Lcom/tapjoy/internal/bn;

    iput-object v0, p0, Lcom/tapjoy/internal/bj;->k:Lcom/tapjoy/internal/bn;

    return-object v0

    .line 753
    :cond_1
    sget-object v0, Lcom/tapjoy/internal/bl;->a:Lcom/tapjoy/internal/bl;

    invoke-direct {p0, v0}, Lcom/tapjoy/internal/bj;->a(Lcom/tapjoy/internal/bl;)V

    .line 754
    sget-object v0, Lcom/tapjoy/internal/bn;->a:Lcom/tapjoy/internal/bn;

    iput-object v0, p0, Lcom/tapjoy/internal/bj;->k:Lcom/tapjoy/internal/bn;

    return-object v0

    .line 757
    :cond_2
    invoke-direct {p0}, Lcom/tapjoy/internal/bj;->z()V

    :cond_3
    int-to-char v0, v0

    .line 759
    invoke-direct {p0, v0}, Lcom/tapjoy/internal/bj;->a(C)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/bj;->m:Ljava/lang/String;

    .line 760
    sget-object v0, Lcom/tapjoy/internal/bn;->f:Lcom/tapjoy/internal/bn;

    iput-object v0, p0, Lcom/tapjoy/internal/bj;->k:Lcom/tapjoy/internal/bn;

    return-object v0
.end method

.method private w()I
    .locals 4

    .line 809
    iget v0, p0, Lcom/tapjoy/internal/bj;->h:I

    const/4 v1, 0x0

    .line 810
    :goto_0
    iget v2, p0, Lcom/tapjoy/internal/bj;->f:I

    if-ge v1, v2, :cond_1

    .line 811
    iget-object v2, p0, Lcom/tapjoy/internal/bj;->e:[C

    aget-char v2, v2, v1

    const/16 v3, 0xa

    if-ne v2, v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private x()I
    .locals 4

    .line 819
    iget v0, p0, Lcom/tapjoy/internal/bj;->i:I

    const/4 v1, 0x0

    .line 820
    :goto_0
    iget v2, p0, Lcom/tapjoy/internal/bj;->f:I

    if-ge v1, v2, :cond_1

    .line 821
    iget-object v2, p0, Lcom/tapjoy/internal/bj;->e:[C

    aget-char v2, v2, v1

    const/16 v3, 0xa

    if-ne v2, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private y()I
    .locals 5

    .line 831
    :cond_0
    :goto_0
    iget v0, p0, Lcom/tapjoy/internal/bj;->f:I

    iget v1, p0, Lcom/tapjoy/internal/bj;->g:I

    const/4 v2, 0x1

    if-lt v0, v1, :cond_2

    invoke-direct {p0, v2}, Lcom/tapjoy/internal/bj;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 882
    :cond_1
    new-instance v0, Ljava/io/EOFException;

    const-string v1, "End of input"

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 832
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/tapjoy/internal/bj;->e:[C

    iget v1, p0, Lcom/tapjoy/internal/bj;->f:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lcom/tapjoy/internal/bj;->f:I

    aget-char v0, v0, v1

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    const/16 v1, 0x23

    if-eq v0, v1, :cond_8

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_3

    return v0

    .line 841
    :cond_3
    iget v4, p0, Lcom/tapjoy/internal/bj;->g:I

    if-ne v3, v4, :cond_4

    invoke-direct {p0, v2}, Lcom/tapjoy/internal/bj;->a(I)Z

    move-result v2

    if-nez v2, :cond_4

    return v0

    .line 845
    :cond_4
    invoke-direct {p0}, Lcom/tapjoy/internal/bj;->z()V

    .line 846
    iget-object v2, p0, Lcom/tapjoy/internal/bj;->e:[C

    iget v3, p0, Lcom/tapjoy/internal/bj;->f:I

    aget-char v2, v2, v3

    const/16 v4, 0x2a

    if-eq v2, v4, :cond_6

    if-eq v2, v1, :cond_5

    return v0

    :cond_5
    add-int/lit8 v3, v3, 0x1

    .line 859
    iput v3, p0, Lcom/tapjoy/internal/bj;->f:I

    .line 860
    invoke-direct {p0}, Lcom/tapjoy/internal/bj;->A()V

    goto :goto_0

    :cond_6
    add-int/lit8 v3, v3, 0x1

    .line 850
    iput v3, p0, Lcom/tapjoy/internal/bj;->f:I

    const-string v0, "*/"

    .line 851
    invoke-direct {p0, v0}, Lcom/tapjoy/internal/bj;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 854
    iget v0, p0, Lcom/tapjoy/internal/bj;->f:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/tapjoy/internal/bj;->f:I

    goto :goto_0

    :cond_7
    const-string v0, "Unterminated comment"

    .line 852
    invoke-direct {p0, v0}, Lcom/tapjoy/internal/bj;->e(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 873
    :cond_8
    invoke-direct {p0}, Lcom/tapjoy/internal/bj;->z()V

    .line 874
    invoke-direct {p0}, Lcom/tapjoy/internal/bj;->A()V

    goto :goto_0
.end method

.method private z()V
    .locals 1

    .line 886
    iget-boolean v0, p0, Lcom/tapjoy/internal/bj;->d:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "Use JsonReader.setLenient(true) to accept malformed JSON"

    .line 887
    invoke-direct {p0, v0}, Lcom/tapjoy/internal/bj;->e(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method public final close()V
    .locals 2

    const/4 v0, 0x0

    .line 581
    iput-object v0, p0, Lcom/tapjoy/internal/bj;->m:Ljava/lang/String;

    .line 582
    iput-object v0, p0, Lcom/tapjoy/internal/bj;->k:Lcom/tapjoy/internal/bn;

    .line 583
    iget-object v0, p0, Lcom/tapjoy/internal/bj;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 584
    iget-object v0, p0, Lcom/tapjoy/internal/bj;->j:Ljava/util/List;

    sget-object v1, Lcom/tapjoy/internal/bl;->h:Lcom/tapjoy/internal/bl;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 585
    iget-object v0, p0, Lcom/tapjoy/internal/bj;->c:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    return-void
.end method

.method public final f()V
    .locals 1

    .line 307
    sget-object v0, Lcom/tapjoy/internal/bn;->a:Lcom/tapjoy/internal/bn;

    invoke-direct {p0, v0}, Lcom/tapjoy/internal/bj;->a(Lcom/tapjoy/internal/bn;)V

    return-void
.end method

.method public final g()V
    .locals 1

    .line 316
    sget-object v0, Lcom/tapjoy/internal/bn;->b:Lcom/tapjoy/internal/bn;

    invoke-direct {p0, v0}, Lcom/tapjoy/internal/bj;->a(Lcom/tapjoy/internal/bn;)V

    return-void
.end method

.method public final h()V
    .locals 1

    .line 325
    sget-object v0, Lcom/tapjoy/internal/bn;->c:Lcom/tapjoy/internal/bn;

    invoke-direct {p0, v0}, Lcom/tapjoy/internal/bj;->a(Lcom/tapjoy/internal/bn;)V

    return-void
.end method

.method public final i()V
    .locals 1

    .line 334
    sget-object v0, Lcom/tapjoy/internal/bn;->d:Lcom/tapjoy/internal/bn;

    invoke-direct {p0, v0}, Lcom/tapjoy/internal/bj;->a(Lcom/tapjoy/internal/bn;)V

    return-void
.end method

.method public final j()Z
    .locals 2

    .line 353
    invoke-virtual {p0}, Lcom/tapjoy/internal/bj;->k()Lcom/tapjoy/internal/bn;

    .line 354
    iget-object v0, p0, Lcom/tapjoy/internal/bj;->k:Lcom/tapjoy/internal/bn;

    sget-object v1, Lcom/tapjoy/internal/bn;->d:Lcom/tapjoy/internal/bn;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/tapjoy/internal/bn;->b:Lcom/tapjoy/internal/bn;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final k()Lcom/tapjoy/internal/bn;
    .locals 4

    .line 362
    iget-object v0, p0, Lcom/tapjoy/internal/bj;->k:Lcom/tapjoy/internal/bn;

    if-eqz v0, :cond_0

    return-object v0

    .line 366
    :cond_0
    sget-object v0, Lcom/tapjoy/internal/bj$2;->a:[I

    .line 1618
    iget-object v1, p0, Lcom/tapjoy/internal/bj;->j:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tapjoy/internal/bl;

    .line 366
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 397
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 395
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "JsonReader is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 386
    :pswitch_1
    :try_start_0
    invoke-direct {p0}, Lcom/tapjoy/internal/bj;->v()Lcom/tapjoy/internal/bn;

    move-result-object v0

    .line 387
    iget-boolean v1, p0, Lcom/tapjoy/internal/bj;->d:Z

    if-eqz v1, :cond_1

    return-object v0

    :cond_1
    const-string v0, "Expected EOF"

    .line 390
    invoke-direct {p0, v0}, Lcom/tapjoy/internal/bj;->e(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 392
    :catch_0
    sget-object v0, Lcom/tapjoy/internal/bn;->j:Lcom/tapjoy/internal/bn;

    iput-object v0, p0, Lcom/tapjoy/internal/bj;->k:Lcom/tapjoy/internal/bn;

    return-object v0

    .line 383
    :pswitch_2
    invoke-direct {p0, v1}, Lcom/tapjoy/internal/bj;->b(Z)Lcom/tapjoy/internal/bn;

    move-result-object v0

    return-object v0

    .line 1728
    :pswitch_3
    invoke-direct {p0}, Lcom/tapjoy/internal/bj;->y()I

    move-result v0

    const/16 v1, 0x3a

    if-eq v0, v1, :cond_4

    const/16 v1, 0x3d

    if-ne v0, v1, :cond_3

    .line 1732
    invoke-direct {p0}, Lcom/tapjoy/internal/bj;->z()V

    .line 1733
    iget v0, p0, Lcom/tapjoy/internal/bj;->f:I

    iget v1, p0, Lcom/tapjoy/internal/bj;->g:I

    if-lt v0, v1, :cond_2

    invoke-direct {p0, v3}, Lcom/tapjoy/internal/bj;->a(I)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_2
    iget-object v0, p0, Lcom/tapjoy/internal/bj;->e:[C

    iget v1, p0, Lcom/tapjoy/internal/bj;->f:I

    aget-char v0, v0, v1

    const/16 v2, 0x3e

    if-ne v0, v2, :cond_4

    add-int/2addr v1, v3

    .line 1734
    iput v1, p0, Lcom/tapjoy/internal/bj;->f:I

    goto :goto_0

    :cond_3
    const-string v0, "Expected \':\'"

    .line 1738
    invoke-direct {p0, v0}, Lcom/tapjoy/internal/bj;->e(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 1741
    :cond_4
    :goto_0
    sget-object v0, Lcom/tapjoy/internal/bl;->e:Lcom/tapjoy/internal/bl;

    invoke-direct {p0, v0}, Lcom/tapjoy/internal/bj;->b(Lcom/tapjoy/internal/bl;)V

    .line 1742
    invoke-direct {p0}, Lcom/tapjoy/internal/bj;->v()Lcom/tapjoy/internal/bn;

    move-result-object v0

    return-object v0

    .line 379
    :pswitch_4
    invoke-direct {p0, v3}, Lcom/tapjoy/internal/bj;->b(Z)Lcom/tapjoy/internal/bn;

    move-result-object v0

    return-object v0

    .line 377
    :pswitch_5
    invoke-direct {p0, v1}, Lcom/tapjoy/internal/bj;->a(Z)Lcom/tapjoy/internal/bn;

    move-result-object v0

    return-object v0

    .line 375
    :pswitch_6
    invoke-direct {p0, v3}, Lcom/tapjoy/internal/bj;->a(Z)Lcom/tapjoy/internal/bn;

    move-result-object v0

    return-object v0

    .line 368
    :pswitch_7
    sget-object v0, Lcom/tapjoy/internal/bl;->g:Lcom/tapjoy/internal/bl;

    invoke-direct {p0, v0}, Lcom/tapjoy/internal/bj;->b(Lcom/tapjoy/internal/bl;)V

    .line 369
    invoke-direct {p0}, Lcom/tapjoy/internal/bj;->v()Lcom/tapjoy/internal/bn;

    move-result-object v0

    .line 370
    iget-boolean v1, p0, Lcom/tapjoy/internal/bj;->d:Z

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/tapjoy/internal/bj;->k:Lcom/tapjoy/internal/bn;

    sget-object v2, Lcom/tapjoy/internal/bn;->a:Lcom/tapjoy/internal/bn;

    if-eq v1, v2, :cond_6

    sget-object v2, Lcom/tapjoy/internal/bn;->c:Lcom/tapjoy/internal/bn;

    if-ne v1, v2, :cond_5

    goto :goto_1

    .line 371
    :cond_5
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected JSON document to start with \'[\' or \'{\' but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tapjoy/internal/bj;->k:Lcom/tapjoy/internal/bn;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    :goto_1
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final l()Ljava/lang/String;
    .locals 3

    .line 423
    invoke-virtual {p0}, Lcom/tapjoy/internal/bj;->k()Lcom/tapjoy/internal/bn;

    .line 424
    iget-object v0, p0, Lcom/tapjoy/internal/bj;->k:Lcom/tapjoy/internal/bn;

    sget-object v1, Lcom/tapjoy/internal/bn;->e:Lcom/tapjoy/internal/bn;

    if-ne v0, v1, :cond_0

    .line 427
    iget-object v0, p0, Lcom/tapjoy/internal/bj;->l:Ljava/lang/String;

    .line 428
    invoke-direct {p0}, Lcom/tapjoy/internal/bj;->t()Lcom/tapjoy/internal/bn;

    return-object v0

    .line 425
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected a name but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tapjoy/internal/bj;->k()Lcom/tapjoy/internal/bn;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final m()Ljava/lang/String;
    .locals 3

    .line 442
    invoke-virtual {p0}, Lcom/tapjoy/internal/bj;->k()Lcom/tapjoy/internal/bn;

    .line 443
    iget-object v0, p0, Lcom/tapjoy/internal/bj;->k:Lcom/tapjoy/internal/bn;

    sget-object v1, Lcom/tapjoy/internal/bn;->f:Lcom/tapjoy/internal/bn;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/tapjoy/internal/bn;->g:Lcom/tapjoy/internal/bn;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 444
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected a string but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tapjoy/internal/bj;->k()Lcom/tapjoy/internal/bn;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 447
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/tapjoy/internal/bj;->m:Ljava/lang/String;

    .line 448
    invoke-direct {p0}, Lcom/tapjoy/internal/bj;->t()Lcom/tapjoy/internal/bn;

    return-object v0
.end method

.method public final n()Z
    .locals 3

    .line 461
    invoke-virtual {p0}, Lcom/tapjoy/internal/bj;->k()Lcom/tapjoy/internal/bn;

    .line 462
    iget-object v0, p0, Lcom/tapjoy/internal/bj;->k:Lcom/tapjoy/internal/bn;

    sget-object v1, Lcom/tapjoy/internal/bn;->h:Lcom/tapjoy/internal/bn;

    if-ne v0, v1, :cond_1

    .line 466
    iget-object v0, p0, Lcom/tapjoy/internal/bj;->m:Ljava/lang/String;

    const-string v1, "true"

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 467
    :goto_0
    invoke-direct {p0}, Lcom/tapjoy/internal/bj;->t()Lcom/tapjoy/internal/bn;

    return v0

    .line 463
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected a boolean but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tapjoy/internal/bj;->k:Lcom/tapjoy/internal/bn;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final o()V
    .locals 3

    .line 480
    invoke-virtual {p0}, Lcom/tapjoy/internal/bj;->k()Lcom/tapjoy/internal/bn;

    .line 481
    iget-object v0, p0, Lcom/tapjoy/internal/bj;->k:Lcom/tapjoy/internal/bn;

    sget-object v1, Lcom/tapjoy/internal/bn;->i:Lcom/tapjoy/internal/bn;

    if-ne v0, v1, :cond_0

    .line 485
    invoke-direct {p0}, Lcom/tapjoy/internal/bj;->t()Lcom/tapjoy/internal/bn;

    return-void

    .line 482
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected null but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tapjoy/internal/bj;->k:Lcom/tapjoy/internal/bn;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final p()D
    .locals 3

    .line 498
    invoke-virtual {p0}, Lcom/tapjoy/internal/bj;->k()Lcom/tapjoy/internal/bn;

    .line 499
    iget-object v0, p0, Lcom/tapjoy/internal/bj;->k:Lcom/tapjoy/internal/bn;

    sget-object v1, Lcom/tapjoy/internal/bn;->f:Lcom/tapjoy/internal/bn;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/tapjoy/internal/bn;->g:Lcom/tapjoy/internal/bn;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 500
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected a double but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tapjoy/internal/bj;->k:Lcom/tapjoy/internal/bn;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 503
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/tapjoy/internal/bj;->m:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 504
    invoke-direct {p0}, Lcom/tapjoy/internal/bj;->t()Lcom/tapjoy/internal/bn;

    return-wide v0
.end method

.method public final q()J
    .locals 7

    .line 522
    invoke-virtual {p0}, Lcom/tapjoy/internal/bj;->k()Lcom/tapjoy/internal/bn;

    .line 523
    iget-object v0, p0, Lcom/tapjoy/internal/bj;->k:Lcom/tapjoy/internal/bn;

    sget-object v1, Lcom/tapjoy/internal/bn;->f:Lcom/tapjoy/internal/bn;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/tapjoy/internal/bn;->g:Lcom/tapjoy/internal/bn;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 524
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected a long but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tapjoy/internal/bj;->k:Lcom/tapjoy/internal/bn;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 529
    :cond_1
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/internal/bj;->m:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    nop

    .line 531
    iget-object v0, p0, Lcom/tapjoy/internal/bj;->m:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    double-to-long v2, v0

    long-to-double v4, v2

    cmpl-double v6, v4, v0

    if-nez v6, :cond_2

    move-wide v0, v2

    .line 538
    :goto_1
    invoke-direct {p0}, Lcom/tapjoy/internal/bj;->t()Lcom/tapjoy/internal/bn;

    return-wide v0

    .line 534
    :cond_2
    new-instance v0, Ljava/lang/NumberFormatException;

    iget-object v1, p0, Lcom/tapjoy/internal/bj;->m:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final r()I
    .locals 6

    .line 556
    invoke-virtual {p0}, Lcom/tapjoy/internal/bj;->k()Lcom/tapjoy/internal/bn;

    .line 557
    iget-object v0, p0, Lcom/tapjoy/internal/bj;->k:Lcom/tapjoy/internal/bn;

    sget-object v1, Lcom/tapjoy/internal/bn;->f:Lcom/tapjoy/internal/bn;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/tapjoy/internal/bn;->g:Lcom/tapjoy/internal/bn;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 558
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected an int but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tapjoy/internal/bj;->k:Lcom/tapjoy/internal/bn;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 563
    :cond_1
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/internal/bj;->m:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    nop

    .line 565
    iget-object v0, p0, Lcom/tapjoy/internal/bj;->m:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    double-to-int v2, v0

    int-to-double v3, v2

    cmpl-double v5, v3, v0

    if-nez v5, :cond_2

    move v0, v2

    .line 572
    :goto_1
    invoke-direct {p0}, Lcom/tapjoy/internal/bj;->t()Lcom/tapjoy/internal/bn;

    return v0

    .line 568
    :cond_2
    new-instance v0, Ljava/lang/NumberFormatException;

    iget-object v1, p0, Lcom/tapjoy/internal/bj;->m:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final s()V
    .locals 4

    .line 596
    invoke-virtual {p0}, Lcom/tapjoy/internal/bj;->k()Lcom/tapjoy/internal/bn;

    .line 597
    iget-object v0, p0, Lcom/tapjoy/internal/bj;->k:Lcom/tapjoy/internal/bn;

    sget-object v1, Lcom/tapjoy/internal/bn;->b:Lcom/tapjoy/internal/bn;

    if-eq v0, v1, :cond_5

    sget-object v1, Lcom/tapjoy/internal/bn;->d:Lcom/tapjoy/internal/bn;

    if-eq v0, v1, :cond_5

    const/4 v0, 0x1

    .line 601
    iput-boolean v0, p0, Lcom/tapjoy/internal/bj;->p:Z

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 605
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/tapjoy/internal/bj;->t()Lcom/tapjoy/internal/bn;

    move-result-object v2

    .line 606
    sget-object v3, Lcom/tapjoy/internal/bn;->a:Lcom/tapjoy/internal/bn;

    if-eq v2, v3, :cond_3

    sget-object v3, Lcom/tapjoy/internal/bn;->c:Lcom/tapjoy/internal/bn;

    if-ne v2, v3, :cond_1

    goto :goto_0

    .line 608
    :cond_1
    sget-object v3, Lcom/tapjoy/internal/bn;->b:Lcom/tapjoy/internal/bn;

    if-eq v2, v3, :cond_2

    sget-object v3, Lcom/tapjoy/internal/bn;->d:Lcom/tapjoy/internal/bn;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v2, v3, :cond_4

    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_3
    :goto_0
    add-int/lit8 v1, v1, 0x1

    :cond_4
    :goto_1
    if-nez v1, :cond_0

    .line 613
    iput-boolean v0, p0, Lcom/tapjoy/internal/bj;->p:Z

    return-void

    :catchall_0
    move-exception v1

    iput-boolean v0, p0, Lcom/tapjoy/internal/bj;->p:Z

    .line 614
    throw v1

    .line 598
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected a value but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tapjoy/internal/bj;->k:Lcom/tapjoy/internal/bn;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    .line 1050
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/tapjoy/internal/bj;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " near "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2211
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2212
    iget v2, p0, Lcom/tapjoy/internal/bj;->f:I

    const/16 v3, 0x14

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 2213
    iget-object v4, p0, Lcom/tapjoy/internal/bj;->e:[C

    iget v5, p0, Lcom/tapjoy/internal/bj;->f:I

    sub-int/2addr v5, v2

    invoke-virtual {v1, v4, v5, v2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 2214
    iget v2, p0, Lcom/tapjoy/internal/bj;->g:I

    iget v4, p0, Lcom/tapjoy/internal/bj;->f:I

    sub-int/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 2215
    iget-object v3, p0, Lcom/tapjoy/internal/bj;->e:[C

    iget v4, p0, Lcom/tapjoy/internal/bj;->f:I

    invoke-virtual {v1, v3, v4, v2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1050
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
