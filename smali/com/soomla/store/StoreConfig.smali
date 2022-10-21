.class public Lcom/soomla/store/StoreConfig;
.super Ljava/lang/Object;
.source "StoreConfig.java"


# static fields
.field public static final CUSTOM_SEC:Ljava/lang/String; = "SU#LL#SE#RE"

.field public static final DB_DELETE:Z = false

.field public static final DB_INITIALIZED:Ljava/lang/String; = "db_initialized"

.field public static final DB_SECURE:Z = true

.field public static final METADATA_VERSION:I = 0x2

.field public static final PREFS_NAME:Ljava/lang/String; = "store.prefs"

.field public static final PUBLIC_KEY:Ljava/lang/String; = "PO#SU#SO#GU"

.field public static SOOM_SEC:Ljava/lang/String; = "SINC_SSEEKK"

.field public static final debug:Z = true

.field public static final obfuscationSalt:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x14

    new-array v0, v0, [B

    .line 32
    fill-array-data v0, :array_0

    sput-object v0, Lcom/soomla/store/StoreConfig;->obfuscationSalt:[B

    return-void

    :array_0
    .array-data 1
        0x40t
        -0x36t
        -0x71t
        -0x2ft
        0x62t
        -0x34t
        0x57t
        -0x66t
        -0x41t
        -0x7ft
        0x59t
        0x33t
        -0xbt
        -0x23t
        0x1et
        0x4dt
        -0x2dt
        0x4bt
        -0x1at
        0x3t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
