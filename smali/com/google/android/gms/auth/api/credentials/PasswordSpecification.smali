.class public final Lcom/google/android/gms/auth/api/credentials/PasswordSpecification;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;

# interfaces
.implements Lcom/google/android/gms/common/internal/ReflectedParcelable;


# annotations
.annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Class;
    creator = "PasswordSpecificationCreator"
.end annotation

.annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Reserved;
    value = {
        0x3e8
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/auth/api/credentials/PasswordSpecification$zze;,
        Lcom/google/android/gms/auth/api/credentials/PasswordSpecification$zzd;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/auth/api/credentials/PasswordSpecification;",
            ">;"
        }
    .end annotation
.end field

.field public static final zzdg:Lcom/google/android/gms/auth/api/credentials/PasswordSpecification;

.field private static final zzdh:Lcom/google/android/gms/auth/api/credentials/PasswordSpecification;


# instance fields
.field private final zzdi:Ljava/lang/String;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        id = 0x1
    .end annotation
.end field

.field private final zzdj:Ljava/util/List;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        id = 0x2
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzdk:Ljava/util/List;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        id = 0x3
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final zzdl:I
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        id = 0x4
    .end annotation
.end field

.field private final zzdm:I
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        id = 0x5
    .end annotation
.end field

.field private final zzdn:[I

.field private final zzdo:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/google/android/gms/auth/api/credentials/zzm;

    invoke-direct {v0}, Lcom/google/android/gms/auth/api/credentials/zzm;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/api/credentials/PasswordSpecification;->CREATOR:Landroid/os/Parcelable$Creator;

    new-instance v0, Lcom/google/android/gms/auth/api/credentials/PasswordSpecification$zzd;

    invoke-direct {v0}, Lcom/google/android/gms/auth/api/credentials/PasswordSpecification$zzd;-><init>()V

    const/16 v1, 0xc

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/auth/api/credentials/PasswordSpecification$zzd;->zzd(II)Lcom/google/android/gms/auth/api/credentials/PasswordSpecification$zzd;

    move-result-object v0

    const-string v3, "abcdefghijkmnopqrstxyzABCDEFGHJKLMNPQRSTXY3456789"

    invoke-virtual {v0, v3}, Lcom/google/android/gms/auth/api/credentials/PasswordSpecification$zzd;->zze(Ljava/lang/String;)Lcom/google/android/gms/auth/api/credentials/PasswordSpecification$zzd;

    move-result-object v0

    const-string v3, "abcdefghijkmnopqrstxyz"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/auth/api/credentials/PasswordSpecification$zzd;->zzd(Ljava/lang/String;I)Lcom/google/android/gms/auth/api/credentials/PasswordSpecification$zzd;

    move-result-object v0

    const-string v3, "ABCDEFGHJKLMNPQRSTXY"

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/auth/api/credentials/PasswordSpecification$zzd;->zzd(Ljava/lang/String;I)Lcom/google/android/gms/auth/api/credentials/PasswordSpecification$zzd;

    move-result-object v0

    const-string v3, "3456789"

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/auth/api/credentials/PasswordSpecification$zzd;->zzd(Ljava/lang/String;I)Lcom/google/android/gms/auth/api/credentials/PasswordSpecification$zzd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/credentials/PasswordSpecification$zzd;->zzj()Lcom/google/android/gms/auth/api/credentials/PasswordSpecification;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/auth/api/credentials/PasswordSpecification;->zzdg:Lcom/google/android/gms/auth/api/credentials/PasswordSpecification;

    new-instance v0, Lcom/google/android/gms/auth/api/credentials/PasswordSpecification$zzd;

    invoke-direct {v0}, Lcom/google/android/gms/auth/api/credentials/PasswordSpecification$zzd;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/auth/api/credentials/PasswordSpecification$zzd;->zzd(II)Lcom/google/android/gms/auth/api/credentials/PasswordSpecification$zzd;

    move-result-object v0

    const-string v1, "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/api/credentials/PasswordSpecification$zzd;->zze(Ljava/lang/String;)Lcom/google/android/gms/auth/api/credentials/PasswordSpecification$zzd;

    move-result-object v0

    const-string v1, "abcdefghijklmnopqrstuvwxyz"

    invoke-virtual {v0, v1, v4}, Lcom/google/android/gms/auth/api/credentials/PasswordSpecification$zzd;->zzd(Ljava/lang/String;I)Lcom/google/android/gms/auth/api/credentials/PasswordSpecification$zzd;

    move-result-object v0

    const-string v1, "ABCDEFGHIJKLMNOPQRSTUVWXYZ"

    invoke-virtual {v0, v1, v4}, Lcom/google/android/gms/auth/api/credentials/PasswordSpecification$zzd;->zzd(Ljava/lang/String;I)Lcom/google/android/gms/auth/api/credentials/PasswordSpecification$zzd;

    move-result-object v0

    const-string v1, "1234567890"

    invoke-virtual {v0, v1, v4}, Lcom/google/android/gms/auth/api/credentials/PasswordSpecification$zzd;->zzd(Ljava/lang/String;I)Lcom/google/android/gms/auth/api/credentials/PasswordSpecification$zzd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/credentials/PasswordSpecification$zzd;->zzj()Lcom/google/android/gms/auth/api/credentials/PasswordSpecification;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/auth/api/credentials/PasswordSpecification;->zzdh:Lcom/google/android/gms/auth/api/credentials/PasswordSpecification;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;II)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x1
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x2
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x3
        .end annotation
    .end param
    .param p4    # I
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x4
        .end annotation
    .end param
    .param p5    # I
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x5
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Constructor;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;II)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/auth/api/credentials/PasswordSpecification;->zzdi:Ljava/lang/String;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/auth/api/credentials/PasswordSpecification;->zzdj:Ljava/util/List;

    invoke-static {p3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/auth/api/credentials/PasswordSpecification;->zzdk:Ljava/util/List;

    iput p4, p0, Lcom/google/android/gms/auth/api/credentials/PasswordSpecification;->zzdl:I

    iput p5, p0, Lcom/google/android/gms/auth/api/credentials/PasswordSpecification;->zzdm:I

    const/16 p1, 0x5f

    new-array p1, p1, [I

    const/4 p2, -0x1

    invoke-static {p1, p2}, Ljava/util/Arrays;->fill([II)V

    iget-object p2, p0, Lcom/google/android/gms/auth/api/credentials/PasswordSpecification;->zzdj:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 p3, 0x0

    const/4 p4, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/String;

    invoke-virtual {p5}, Ljava/lang/String;->toCharArray()[C

    move-result-object p5

    array-length v0, p5

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_0

    aget-char v2, p5, v1

    add-int/lit8 v2, v2, -0x20

    aput p4, p1, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_1
    iput-object p1, p0, Lcom/google/android/gms/auth/api/credentials/PasswordSpecification;->zzdn:[I

    new-instance p1, Ljava/security/SecureRandom;

    invoke-direct {p1}, Ljava/security/SecureRandom;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/auth/api/credentials/PasswordSpecification;->zzdo:Ljava/util/Random;

    return-void
.end method

.method private static zzd(Ljava/util/Collection;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Character;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [C

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Character;

    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    move-result v2

    add-int/lit8 v3, v1, 0x1

    aput-char v2, v0, v1

    move v1, v3

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method private static zzd(III)Z
    .locals 0

    const/16 p1, 0x20

    if-lt p0, p1, :cond_1

    const/16 p1, 0x7e

    if-le p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method static synthetic zze(Ljava/util/Collection;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/google/android/gms/auth/api/credentials/PasswordSpecification;->zzd(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic zze(III)Z
    .locals 0

    const/16 p1, 0x20

    const/16 p2, 0x7e

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/auth/api/credentials/PasswordSpecification;->zzd(III)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result p2

    iget-object v0, p0, Lcom/google/android/gms/auth/api/credentials/PasswordSpecification;->zzdi:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object v0, p0, Lcom/google/android/gms/auth/api/credentials/PasswordSpecification;->zzdj:Ljava/util/List;

    const/4 v1, 0x2

    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeStringList(Landroid/os/Parcel;ILjava/util/List;Z)V

    iget-object v0, p0, Lcom/google/android/gms/auth/api/credentials/PasswordSpecification;->zzdk:Ljava/util/List;

    const/4 v1, 0x3

    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeIntegerList(Landroid/os/Parcel;ILjava/util/List;Z)V

    iget v0, p0, Lcom/google/android/gms/auth/api/credentials/PasswordSpecification;->zzdl:I

    const/4 v1, 0x4

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    iget v0, p0, Lcom/google/android/gms/auth/api/credentials/PasswordSpecification;->zzdm:I

    const/4 v1, 0x5

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method
