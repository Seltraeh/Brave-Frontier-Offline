.class Lsg/gumi/bravefrontier/BraveFrontierJNI$7$2;
.super Ljava/lang/Object;
.source "BraveFrontierJNI.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsg/gumi/bravefrontier/BraveFrontierJNI$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lsg/gumi/bravefrontier/BraveFrontierJNI$7;


# direct methods
.method constructor <init>(Lsg/gumi/bravefrontier/BraveFrontierJNI$7;)V
    .locals 0

    .line 667
    iput-object p1, p0, Lsg/gumi/bravefrontier/BraveFrontierJNI$7$2;->this$0:Lsg/gumi/bravefrontier/BraveFrontierJNI$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p1, 0x1

    .line 669
    invoke-static {p1}, Lsg/gumi/bravefrontier/BraveFrontierJNI;->nativeRateThisAppPopupCallback(I)V

    return-void
.end method
