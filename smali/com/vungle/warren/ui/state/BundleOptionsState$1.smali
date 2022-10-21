.class final Lcom/vungle/warren/ui/state/BundleOptionsState$1;
.super Ljava/lang/Object;
.source "BundleOptionsState.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/warren/ui/state/BundleOptionsState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/vungle/warren/ui/state/BundleOptionsState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/vungle/warren/ui/state/BundleOptionsState;
    .locals 1

    .line 105
    new-instance v0, Lcom/vungle/warren/ui/state/BundleOptionsState;

    invoke-direct {v0, p1}, Lcom/vungle/warren/ui/state/BundleOptionsState;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 102
    invoke-virtual {p0, p1}, Lcom/vungle/warren/ui/state/BundleOptionsState$1;->createFromParcel(Landroid/os/Parcel;)Lcom/vungle/warren/ui/state/BundleOptionsState;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/vungle/warren/ui/state/BundleOptionsState;
    .locals 0

    .line 110
    new-array p1, p1, [Lcom/vungle/warren/ui/state/BundleOptionsState;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 102
    invoke-virtual {p0, p1}, Lcom/vungle/warren/ui/state/BundleOptionsState$1;->newArray(I)[Lcom/vungle/warren/ui/state/BundleOptionsState;

    move-result-object p1

    return-object p1
.end method
