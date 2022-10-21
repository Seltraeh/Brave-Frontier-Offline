.class public final Lcom/tapjoy/internal/go;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:J

.field public b:J

.field public c:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a([BI)J
    .locals 5

    .line 173
    aget-byte v0, p0, p1

    add-int/lit8 v1, p1, 0x1

    .line 174
    aget-byte v1, p0, v1

    add-int/lit8 v2, p1, 0x2

    .line 175
    aget-byte v2, p0, v2

    add-int/lit8 p1, p1, 0x3

    .line 176
    aget-byte p0, p0, p1

    and-int/lit16 p1, v0, 0x80

    const/16 v3, 0x80

    if-ne p1, v3, :cond_0

    and-int/lit8 p1, v0, 0x7f

    add-int/lit16 v0, p1, 0x80

    :cond_0
    and-int/lit16 p1, v1, 0x80

    if-ne p1, v3, :cond_1

    and-int/lit8 p1, v1, 0x7f

    add-int/lit16 v1, p1, 0x80

    :cond_1
    and-int/lit16 p1, v2, 0x80

    if-ne p1, v3, :cond_2

    and-int/lit8 p1, v2, 0x7f

    add-int/lit16 v2, p1, 0x80

    :cond_2
    and-int/lit16 p1, p0, 0x80

    if-ne p1, v3, :cond_3

    and-int/lit8 p0, p0, 0x7f

    add-int/2addr p0, v3

    :cond_3
    int-to-long v3, v0

    const/16 p1, 0x18

    shl-long/2addr v3, p1

    int-to-long v0, v1

    const/16 p1, 0x10

    shl-long/2addr v0, p1

    add-long/2addr v3, v0

    int-to-long v0, v2

    const/16 p1, 0x8

    shl-long/2addr v0, p1

    add-long/2addr v3, v0

    int-to-long p0, p0

    add-long/2addr v3, p0

    return-wide v3
.end method

.method private static b([BI)J
    .locals 4

    .line 192
    invoke-static {p0, p1}, Lcom/tapjoy/internal/go;->a([BI)J

    move-result-wide v0

    add-int/lit8 p1, p1, 0x4

    .line 193
    invoke-static {p0, p1}, Lcom/tapjoy/internal/go;->a([BI)J

    move-result-wide p0

    const-wide v2, 0x83aa7e80L

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    mul-long p0, p0, v2

    const-wide v2, 0x100000000L

    .line 194
    div-long/2addr p0, v2

    add-long/2addr v0, p0

    return-wide v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;I)Z
    .locals 19

    move-object/from16 v1, p0

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 81
    :try_start_0
    new-instance v3, Ljava/net/DatagramSocket;

    invoke-direct {v3}, Ljava/net/DatagramSocket;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    move/from16 v2, p2

    .line 82
    :try_start_1
    invoke-virtual {v3, v2}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    .line 83
    invoke-static/range {p1 .. p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    const/16 v4, 0x30

    new-array v5, v4, [B

    .line 85
    new-instance v6, Ljava/net/DatagramPacket;

    const/16 v7, 0x7b

    invoke-direct {v6, v5, v4, v2, v7}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    const/16 v2, 0x1b

    aput-byte v2, v5, v0

    .line 93
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 94
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    const-wide/16 v11, 0x3e8

    .line 1202
    div-long v13, v7, v11
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 1203
    invoke-static {v13, v14}, Ljava/lang/Long;->signum(J)I

    mul-long v15, v13, v11

    sub-long v15, v7, v15

    const-wide v17, 0x83aa7e80L

    add-long v13, v13, v17

    const/16 v2, 0x18

    shr-long v11, v13, v2

    long-to-int v12, v11

    int-to-byte v11, v12

    const/16 v12, 0x28

    :try_start_2
    aput-byte v11, v5, v12
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    const/16 v11, 0x29

    const/16 v17, 0x10

    move-object/from16 v18, v3

    shr-long v2, v13, v17

    long-to-int v3, v2

    int-to-byte v2, v3

    :try_start_3
    aput-byte v2, v5, v11
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    const/16 v2, 0x2a

    const/16 v3, 0x8

    shr-long v0, v13, v3

    long-to-int v1, v0

    int-to-byte v0, v1

    :try_start_4
    aput-byte v0, v5, v2

    const/16 v0, 0x2b

    const/4 v1, 0x0

    shr-long/2addr v13, v1

    long-to-int v1, v13

    int-to-byte v1, v1

    aput-byte v1, v5, v0

    const-wide v0, 0x100000000L

    mul-long v15, v15, v0

    const-wide/16 v0, 0x3e8

    .line 1212
    div-long/2addr v15, v0

    const/16 v0, 0x2c

    const/16 v1, 0x18

    shr-long v13, v15, v1

    long-to-int v1, v13

    int-to-byte v1, v1

    aput-byte v1, v5, v0

    const/16 v0, 0x2d

    shr-long v1, v15, v17

    long-to-int v2, v1

    int-to-byte v1, v2

    aput-byte v1, v5, v0

    const/16 v0, 0x2e

    shr-long v1, v15, v3

    long-to-int v2, v1

    int-to-byte v1, v2

    aput-byte v1, v5, v0

    const/16 v0, 0x2f

    .line 1218
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    const-wide v13, 0x406fe00000000000L    # 255.0

    mul-double v1, v1, v13

    double-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, v5, v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-object/from16 v1, v18

    .line 97
    :try_start_5
    invoke-virtual {v1, v6}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 100
    new-instance v0, Ljava/net/DatagramPacket;

    invoke-direct {v0, v5, v4}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 101
    invoke-virtual {v1, v0}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 102
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long v9, v2, v9

    add-long/2addr v7, v9

    const/16 v0, 0x18

    .line 106
    invoke-static {v5, v0}, Lcom/tapjoy/internal/go;->b([BI)J

    move-result-wide v13

    const/16 v0, 0x20

    .line 107
    invoke-static {v5, v0}, Lcom/tapjoy/internal/go;->b([BI)J

    move-result-wide v15

    .line 108
    invoke-static {v5, v12}, Lcom/tapjoy/internal/go;->b([BI)J

    move-result-wide v4

    sub-long v17, v4, v15

    sub-long v9, v9, v17

    sub-long/2addr v15, v13

    sub-long/2addr v4, v7

    add-long/2addr v15, v4

    const-wide/16 v4, 0x2

    .line 118
    div-long/2addr v15, v4
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    add-long/2addr v7, v15

    move-object/from16 v4, p0

    .line 124
    :try_start_6
    iput-wide v7, v4, Lcom/tapjoy/internal/go;->a:J

    .line 125
    iput-wide v2, v4, Lcom/tapjoy/internal/go;->b:J

    .line 126
    iput-wide v9, v4, Lcom/tapjoy/internal/go;->c:J
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 133
    invoke-virtual {v1}, Ljava/net/DatagramSocket;->close()V

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v0

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object/from16 v4, p0

    goto :goto_2

    :catch_0
    move-object/from16 v4, p0

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object/from16 v4, p0

    goto :goto_0

    :catch_1
    move-object/from16 v4, p0

    goto :goto_1

    :catchall_3
    move-exception v0

    move-object v4, v1

    :goto_0
    move-object/from16 v1, v18

    goto :goto_2

    :catch_2
    move-object v4, v1

    :goto_1
    move-object/from16 v1, v18

    goto :goto_3

    :catchall_4
    move-exception v0

    move-object v4, v1

    move-object v1, v3

    :goto_2
    move-object v2, v1

    goto :goto_4

    :catch_3
    move-object v4, v1

    move-object v1, v3

    :catch_4
    :goto_3
    move-object v2, v1

    goto :goto_5

    :catchall_5
    move-exception v0

    move-object v4, v1

    :goto_4
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/net/DatagramSocket;->close()V

    .line 135
    :cond_0
    throw v0

    :catch_5
    move-object v4, v1

    :goto_5
    if-eqz v2, :cond_1

    .line 133
    invoke-virtual {v2}, Ljava/net/DatagramSocket;->close()V

    :cond_1
    const/4 v0, 0x0

    return v0
.end method
