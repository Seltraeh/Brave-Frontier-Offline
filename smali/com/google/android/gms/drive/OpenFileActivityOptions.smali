.class public final Lcom/google/android/gms/drive/OpenFileActivityOptions;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/drive/OpenFileActivityOptions$Builder;
    }
.end annotation


# static fields
.field public static final EXTRA_RESPONSE_DRIVE_ID:Ljava/lang/String; = "response_drive_id"


# instance fields
.field public final zzay:Ljava/lang/String;

.field public final zzaz:[Ljava/lang/String;

.field public final zzbb:Lcom/google/android/gms/drive/DriveId;

.field public final zzbc:Lcom/google/android/gms/drive/query/internal/FilterHolder;


# direct methods
.method private constructor <init>(Ljava/lang/String;[Ljava/lang/String;Lcom/google/android/gms/drive/query/Filter;Lcom/google/android/gms/drive/DriveId;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/drive/OpenFileActivityOptions;->zzay:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/drive/OpenFileActivityOptions;->zzaz:[Ljava/lang/String;

    if-nez p3, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/google/android/gms/drive/query/internal/FilterHolder;

    invoke-direct {p1, p3}, Lcom/google/android/gms/drive/query/internal/FilterHolder;-><init>(Lcom/google/android/gms/drive/query/Filter;)V

    :goto_0
    iput-object p1, p0, Lcom/google/android/gms/drive/OpenFileActivityOptions;->zzbc:Lcom/google/android/gms/drive/query/internal/FilterHolder;

    iput-object p4, p0, Lcom/google/android/gms/drive/OpenFileActivityOptions;->zzbb:Lcom/google/android/gms/drive/DriveId;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;[Ljava/lang/String;Lcom/google/android/gms/drive/query/Filter;Lcom/google/android/gms/drive/DriveId;Lcom/google/android/gms/drive/zzq;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/drive/OpenFileActivityOptions;-><init>(Ljava/lang/String;[Ljava/lang/String;Lcom/google/android/gms/drive/query/Filter;Lcom/google/android/gms/drive/DriveId;)V

    return-void
.end method
