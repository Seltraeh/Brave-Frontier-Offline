.class public final Lcom/appsflyer/internal/d$c;
.super Ljava/util/HashMap;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/internal/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appsflyer/internal/d$c$d;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static ǃ:I = 0x0

.field private static ɩ:J = 0x0L

.field private static Ι:[C = null

.field private static Ӏ:I = 0x1


# instance fields
.field private final ı:Landroid/content/Context;

.field private final ι:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0xf4

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/appsflyer/internal/d$c;->Ι:[C

    const-wide v0, 0x1693130f4352ec37L    # 6.229812121683588E-200

    sput-wide v0, Lcom/appsflyer/internal/d$c;->ɩ:J

    return-void

    nop

    :array_0
    .array-data 2
        0x61s
        -0x13afs
        -0x27cfs
        -0x3b2fs
        -0x4f4bs
        -0x6282s
        -0x76d1s
        0x75f2s
        0x61ccs
        0x4d8es
        0x3a4bs
        0x262ds
        0x62s
        -0x13bbs
        -0x27f1s
        -0x3b35s
        -0x4f48s
        0x10fcs
        -0x336s
        -0x377ds
        -0x2babs
        -0x5fc4s
        -0x7220s
        -0x664as
        0x6577s
        0x6bs
        -0x13aes
        -0x27f8s
        0x66s
        -0x13aas
        -0x27f9s
        -0x3b37s
        -0x4f47s
        -0x6289s
        -0x7696s
        0x75e6s
        0x61dds
        0x4d81s
        0x3a43s
        0x262fs
        0x12f5s
        -0x141s
        -0x1495s
        -0x28a9s
        -0x3ce9s
        -0x5079s
        -0x644bs
        -0x7790s
        0x742as
        0x60a3s
        0x4cd1s
        0x3894s
        0x2551s
        0x117fs
        -0x21fs
        -0x165cs
        -0x2990s
        -0x3dads
        -0x51aes
        -0x6534s
        -0x7968s
        0x7374s
        0x5f2bs
        0x4bf5s
        0x37c8s
        0x239as
        0x1045s
        -0x3f1s
        -0x175es
        -0x2b11s
        0x7e1s
        -0x1428s
        -0x207es
        -0x3ceas
        -0x4891s
        -0x6560s
        -0x7107s
        0x66s
        -0x13a2s
        -0x27e4s
        -0x3b2as
        -0x4f58s
        -0x62a1s
        -0x76d5s
        0x75f4s
        0x61d6s
        0x4d8cs
        0x3a4es
        0x2619s
        0x12f5s
        -0x141s
        -0x1499s
        0x36s
        -0x13e7s
        -0x27a1s
        -0x3b75s
        -0x4f13s
        0x2ds
        -0x13bbs
        -0x27f3s
        -0x3b75s
        -0x4f0as
        0x66s
        -0x13aas
        -0x27f9s
        -0x3b37s
        -0x4f47s
        -0x6289s
        -0x7696s
        0x75e6s
        0x61dds
        0x4d81s
        0x3a43s
        0x262fs
        0x12f5s
        -0x141s
        -0x1495s
        -0x28a9s
        -0x3ce9s
        -0x5079s
        -0x644bs
        -0x7790s
        0x742as
        0x60a3s
        0x4cccs
        0x3890s
        0x2544s
        0x112as
        -0x20ds
        -0x1613s
        -0x298ds
        -0x3daes
        -0x51fas
        -0x653fs
        -0x7940s
        0x7372s
        0x5f36s
        0x4be6s
        0x37d9s
        0x2383s
        0x105es
        -0x3f8s
        -0x1709s
        -0x2b5fs
        -0x3ec4s
        -0x52e3s
        0x62s
        -0x13aas
        -0x27f4s
        -0x3b40s
        -0x4f43s
        -0x628as
        -0x7686s
        0x75b4s
        0x618cs
        0x4ddfs
        0x3a42s
        0x2664s
        0x12a5s
        -0x153s
        -0x14d0s
        -0x28f7s
        -0x3cbfs
        -0x5061s
        0x61s
        -0x13a7s
        -0x27f6s
        -0x3b29s
        -0x4f4ds
        -0x6286s
        -0x76d2s
        0x75afs
        0x61d1s
        0x4d81s
        0x3a52s
        0x2638s
        0x12fas
        -0x141s
        -0x14d4s
        -0x28a8s
        -0x3ceds
        -0x502ds
        -0x6449s
        -0x7786s
        0x7422s
        0x60ads
        0x4cf8s
        0x38b0s
        0x257cs
        0x110bs
        -0x22ds
        -0x1661s
        -0x29a3s
        -0x3d9cs
        -0x51cfs
        -0x651fs
        -0x795fs
        0x7359s
        0x5f09s
        0x4bc0s
        0x37f8s
        0x74s
        -0x13aes
        -0x27fds
        -0x3b2bs
        -0x4f47s
        -0x629fs
        -0x76d5s
        0x75f5s
        0x61cds
        0x4d9ds
        0x3a43s
        -0x6b2as
        0x78a1s
        0x4cf6s
        0x73s
        -0x13aes
        -0x2800s
        -0x3b2as
        -0x4f4ds
        -0x629fs
        0x62s
        0x26s
        -0x13b1s
        -0x72b9s
        0x6125s
        0x26s
        -0x13b9s
        0x66s
        -0x13f9s
        -0x27e1s
        -0x3b6bs
        -0x4f53s
        -0x62des
        -0x76c6s
        0x75b0s
        0x61c8s
        0x4ddds
        0x3a14s
        0x263es
        0x12fcs
        -0x141s
        -0x149ds
        -0x28acs
    .end array-data
.end method

.method public constructor <init>(Ljava/util/Map;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 389
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 390
    iput-object p1, p0, Lcom/appsflyer/internal/d$c;->ι:Ljava/util/Map;

    .line 391
    iput-object p2, p0, Lcom/appsflyer/internal/d$c;->ı:Landroid/content/Context;

    .line 392
    invoke-direct {p0}, Lcom/appsflyer/internal/d$c;->ι()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0}, Lcom/appsflyer/internal/d$c;->ǃ()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private ǃ()Ljava/lang/String;
    .locals 12

    const-string v0, ""

    const/16 v1, 0x10

    const/16 v2, 0x2c

    const/16 v3, 0x66

    const/4 v4, 0x5

    const/4 v5, 0x0

    .line 456
    :try_start_0
    iget-object v6, p0, Lcom/appsflyer/internal/d$c;->ι:Ljava/util/Map;

    const/16 v7, 0xc

    invoke-static {v5, v7, v5}, Lcom/appsflyer/internal/d$c;->ι(IIC)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 457
    iget-object v7, p0, Lcom/appsflyer/internal/d$c;->ι:Ljava/util/Map;

    const/16 v8, 0x4d

    const/16 v9, 0xf

    invoke-static {v8, v9, v5}, Lcom/appsflyer/internal/d$c;->ι(IIC)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x5c

    .line 458
    invoke-static {v8, v4, v5}, Lcom/appsflyer/internal/d$c;->ι(IIC)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x61

    .line 459
    invoke-static {v9, v4, v5}, Lcom/appsflyer/internal/d$c;->ι(IIC)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 461
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/appsflyer/HashUtils;->toSha256(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 462
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v6

    .line 464
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3, v2, v5}, Lcom/appsflyer/internal/d$c;->ι(IIC)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/appsflyer/AFLogger;->afRDLog(Ljava/lang/String;)V

    .line 465
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x92

    const/16 v7, 0x12

    invoke-static {v0, v7, v5}, Lcom/appsflyer/internal/d$c;->ι(IIC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 469
    :goto_0
    :try_start_1
    iget-object v6, p0, Lcom/appsflyer/internal/d$c;->ı:Landroid/content/Context;

    const/4 v7, 0x0

    new-instance v8, Landroid/content/IntentFilter;

    const/16 v9, 0xa4

    const/16 v10, 0x25

    invoke-static {v9, v10, v5}, Lcom/appsflyer/internal/d$c;->ι(IIC)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v6

    const/16 v7, 0x19

    if-eqz v6, :cond_0

    const/16 v8, 0x19

    goto :goto_1

    :cond_0
    const/16 v8, 0x56

    :goto_1
    const/16 v9, -0xa8c

    if-eq v8, v7, :cond_1

    goto :goto_2

    :cond_1
    const/16 v7, 0xc9

    const/16 v8, 0xb

    .line 471
    invoke-static {v7, v8, v5}, Lcom/appsflyer/internal/d$c;->ι(IIC)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v7

    .line 472
    invoke-virtual {v6, v7, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 474
    :goto_2
    iget-object v6, p0, Lcom/appsflyer/internal/d$c;->ı:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v7, 0x1

    const/4 v8, 0x2

    if-eqz v6, :cond_5

    .line 489
    sget v10, Lcom/appsflyer/internal/d$c;->Ӏ:I

    add-int/lit8 v10, v10, 0x41

    rem-int/lit16 v11, v10, 0x80

    sput v11, Lcom/appsflyer/internal/d$c;->ǃ:I

    rem-int/2addr v10, v8

    const v11, 0x94ae

    if-eqz v10, :cond_3

    const/16 v10, 0x343b

    :try_start_2
    invoke-static {v10, v4, v11}, Lcom/appsflyer/internal/d$c;->ι(IIC)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    const/16 v6, 0x28

    if-eqz v4, :cond_2

    const/16 v4, 0x2a

    goto :goto_3

    :cond_2
    const/16 v4, 0x28

    :goto_3
    if-eq v4, v6, :cond_5

    goto :goto_4

    :cond_3
    const/16 v4, 0xd4

    const/4 v10, 0x3

    .line 475
    invoke-static {v4, v10, v11}, Lcom/appsflyer/internal/d$c;->ι(IIC)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    if-eqz v4, :cond_5

    .line 489
    :goto_4
    sget v4, Lcom/appsflyer/internal/d$c;->ǃ:I

    add-int/lit8 v4, v4, 0x47

    rem-int/lit16 v6, v4, 0x80

    sput v6, Lcom/appsflyer/internal/d$c;->Ӏ:I

    rem-int/2addr v4, v8

    if-nez v4, :cond_4

    goto :goto_5

    :cond_4
    const/4 v4, 0x1

    goto :goto_6

    :cond_5
    :goto_5
    const/4 v4, 0x0

    .line 476
    :goto_6
    :try_start_3
    iget-object v6, p0, Lcom/appsflyer/internal/d$c;->ı:Landroid/content/Context;

    const/16 v10, 0xd7

    const/4 v11, 0x6

    invoke-static {v10, v11, v5}, Lcom/appsflyer/internal/d$c;->ι(IIC)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/SensorManager;

    const/4 v10, -0x1

    .line 477
    invoke-virtual {v6, v10}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    .line 478
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v11, 0xdd

    invoke-static {v11, v7, v5}, Lcom/appsflyer/internal/d$c;->ι(IIC)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v7, 0xde

    invoke-static {v7, v8, v5}, Lcom/appsflyer/internal/d$c;->ι(IIC)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v4, 0xe0

    const v7, 0x8d61

    invoke-static {v4, v8, v7}, Lcom/appsflyer/internal/d$c;->ι(IIC)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v4, 0xe2

    invoke-static {v4, v8, v5}, Lcom/appsflyer/internal/d$c;->ι(IIC)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/appsflyer/internal/d$c;->ι:Ljava/util/Map;

    .line 482
    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 483
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1495
    invoke-static {v4}, Lcom/appsflyer/internal/d$c$d;->ι(Ljava/lang/String;)[B

    move-result-object v4

    invoke-static {v4}, Lcom/appsflyer/internal/d$c$d;->ı([B)[B

    move-result-object v4

    invoke-static {v4}, Lcom/appsflyer/internal/d$c$d;->ɩ([B)Ljava/lang/String;

    move-result-object v4

    .line 483
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_7

    :catch_1
    move-exception v4

    .line 486
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3, v2, v5}, Lcom/appsflyer/internal/d$c;->ι(IIC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/appsflyer/AFLogger;->afRDLog(Ljava/lang/String;)V

    .line 487
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0xe4

    invoke-static {v0, v1, v5}, Lcom/appsflyer/internal/d$c;->ι(IIC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_7
    return-object v0
.end method

.method private ι()Ljava/lang/String;
    .locals 9

    const/16 v0, 0x1c

    const/4 v1, 0x0

    .line 420
    :try_start_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 421
    iget-object v3, p0, Lcom/appsflyer/internal/d$c;->ι:Ljava/util/Map;

    const/16 v4, 0xc

    invoke-static {v1, v4, v1}, Lcom/appsflyer/internal/d$c;->ι(IIC)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 422
    iget-object v5, p0, Lcom/appsflyer/internal/d$c;->ι:Ljava/util/Map;

    const/4 v6, 0x5

    invoke-static {v4, v6, v1}, Lcom/appsflyer/internal/d$c;->ι(IIC)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x63

    if-nez v5, :cond_0

    goto :goto_0

    :cond_0
    const/16 v4, 0x63

    :goto_0
    if-eq v4, v6, :cond_1

    const/16 v4, 0x11

    const/16 v5, 0x8

    const/16 v6, 0x10b2

    .line 425
    invoke-static {v4, v5, v6}, Lcom/appsflyer/internal/d$c;->ι(IIC)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    .line 428
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 429
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    const/4 v3, 0x3

    new-array v6, v3, [Ljava/lang/String;

    aput-object v2, v6, v1

    const/4 v2, 0x1

    aput-object v5, v6, v2

    .line 431
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v6, v5

    invoke-static {v6}, Lcom/appsflyer/internal/d$c;->ι([Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 432
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v7, 0x4

    if-le v6, v7, :cond_2

    const/4 v8, 0x0

    goto :goto_1

    :cond_2
    const/4 v8, 0x1

    :goto_1
    if-eq v8, v2, :cond_4

    .line 448
    sget v2, Lcom/appsflyer/internal/d$c;->Ӏ:I

    add-int/lit8 v2, v2, 0x61

    rem-int/lit16 v8, v2, 0x80

    sput v8, Lcom/appsflyer/internal/d$c;->ǃ:I

    rem-int/2addr v2, v5

    if-eqz v2, :cond_3

    .line 435
    :try_start_1
    invoke-virtual {v4, v3, v6}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_3
    invoke-virtual {v4, v7, v6}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_4
    :goto_2
    if-ge v6, v7, :cond_5

    const/16 v2, 0x58

    goto :goto_3

    :cond_5
    const/16 v2, 0x1c

    :goto_3
    if-eq v2, v0, :cond_6

    add-int/lit8 v6, v6, 0x1

    const/16 v2, 0x31

    .line 441
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_6
    :goto_4
    const/16 v2, 0x19

    .line 444
    invoke-static {v2, v3, v1}, Lcom/appsflyer/internal/d$c;->ι(IIC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 445
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 435
    sget v1, Lcom/appsflyer/internal/d$c;->Ӏ:I

    add-int/lit8 v1, v1, 0x73

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/d$c;->ǃ:I

    rem-int/2addr v1, v5

    return-object v0

    :catch_0
    move-exception v2

    .line 447
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x2a

    invoke-static {v0, v4, v1}, Lcom/appsflyer/internal/d$c;->ι(IIC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afRDLog(Ljava/lang/String;)V

    const/16 v0, 0x46

    const/4 v1, 0x7

    const/16 v2, 0x78a

    .line 448
    invoke-static {v0, v1, v2}, Lcom/appsflyer/internal/d$c;->ι(IIC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static ι(IIC)Ljava/lang/String;
    .locals 8

    .line 2107
    sget v0, Lcom/appsflyer/internal/d$c;->ǃ:I

    add-int/lit8 v0, v0, 0x47

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/d$c;->Ӏ:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    if-eq v0, v2, :cond_1

    .line 2096
    new-array v0, p1, [C

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    new-array v0, p1, [C

    :goto_1
    const/4 v2, 0x6

    if-ge v1, p1, :cond_2

    const/16 v3, 0x11

    goto :goto_2

    :cond_2
    const/4 v3, 0x6

    :goto_2
    if-eq v3, v2, :cond_3

    .line 2101
    sget-object v2, Lcom/appsflyer/internal/d$c;->Ι:[C

    add-int v3, p0, v1

    aget-char v2, v2, v3

    int-to-long v2, v2

    int-to-long v4, v1

    sget-wide v6, Lcom/appsflyer/internal/d$c;->ɩ:J

    mul-long v4, v4, v6

    xor-long/2addr v2, v4

    int-to-long v4, p2

    xor-long/2addr v2, v4

    long-to-int v3, v2

    int-to-char v2, v3

    aput-char v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    .line 2107
    sget v2, Lcom/appsflyer/internal/d$c;->Ӏ:I

    add-int/lit8 v2, v2, 0x23

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/appsflyer/internal/d$c;->ǃ:I

    rem-int/lit8 v2, v2, 0x2

    goto :goto_1

    :cond_3
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method private static varargs ι([Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 396
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x3

    if-ge v2, v3, :cond_0

    .line 397
    aget-object v3, p0, v2

    .line 398
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    .line 414
    sget v3, Lcom/appsflyer/internal/d$c;->Ӏ:I

    add-int/lit8 v3, v3, 0x67

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lcom/appsflyer/internal/d$c;->ǃ:I

    rem-int/lit8 v3, v3, 0x2

    goto :goto_0

    .line 401
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 402
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 404
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 407
    sget v4, Lcom/appsflyer/internal/d$c;->Ӏ:I

    add-int/lit8 v4, v4, 0x15

    rem-int/lit16 v5, v4, 0x80

    sput v5, Lcom/appsflyer/internal/d$c;->ǃ:I

    rem-int/lit8 v4, v4, 0x2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v0, :cond_5

    .line 414
    sget v5, Lcom/appsflyer/internal/d$c;->Ӏ:I

    add-int/lit8 v5, v5, 0x63

    rem-int/lit16 v6, v5, 0x80

    sput v6, Lcom/appsflyer/internal/d$c;->ǃ:I

    rem-int/lit8 v5, v5, 0x2

    const/16 v6, 0x52

    if-eqz v5, :cond_1

    const/16 v5, 0x52

    goto :goto_2

    :cond_1
    const/16 v5, 0x13

    :goto_2
    const/4 v7, 0x0

    const/4 v5, 0x0

    :goto_3
    if-ge v5, v3, :cond_2

    const/4 v6, 0x0

    goto :goto_4

    :cond_2
    const/4 v6, 0x1

    :goto_4
    if-eqz v6, :cond_3

    .line 411
    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    .line 412
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 407
    :cond_3
    aget-object v6, p0, v5

    .line 408
    invoke-virtual {v6, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-nez v7, :cond_4

    goto :goto_5

    .line 409
    :cond_4
    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    xor-int/2addr v6, v7

    :goto_5
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_5
    return-object v2
.end method
