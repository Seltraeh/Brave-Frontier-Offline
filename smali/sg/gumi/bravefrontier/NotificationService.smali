.class public final Lsg/gumi/bravefrontier/NotificationService;
.super Ljava/lang/Object;
.source "NotificationService.java"


# static fields
.field public static final GCM_SENDER_ID:Ljava/lang/String; = "821991734423"

.field private static instance:Lsg/gumi/bravefrontier/NotificationService;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lsg/gumi/bravefrontier/NotificationService;
    .locals 1

    .line 15
    sget-object v0, Lsg/gumi/bravefrontier/NotificationService;->instance:Lsg/gumi/bravefrontier/NotificationService;

    if-nez v0, :cond_0

    .line 16
    new-instance v0, Lsg/gumi/bravefrontier/NotificationService;

    invoke-direct {v0}, Lsg/gumi/bravefrontier/NotificationService;-><init>()V

    sput-object v0, Lsg/gumi/bravefrontier/NotificationService;->instance:Lsg/gumi/bravefrontier/NotificationService;

    .line 18
    :cond_0
    sget-object v0, Lsg/gumi/bravefrontier/NotificationService;->instance:Lsg/gumi/bravefrontier/NotificationService;

    return-object v0
.end method


# virtual methods
.method public onCreate(Lsg/gumi/bravefrontier/BraveFrontier;)V
    .locals 0

    .line 22
    sget-object p1, Lsg/gumi/util/BFConfig;->PLATFORM:Lsg/gumi/util/BFConfig$Platform;

    sget-object p1, Lsg/gumi/util/BFConfig;->PLATFORM_GOOGLE:Lsg/gumi/util/BFConfig$Platform;

    return-void
.end method

.method public setRemoteNotificationsEnable(Lsg/gumi/bravefrontier/BraveFrontier;Z)V
    .locals 0

    if-nez p1, :cond_0

    :cond_0
    return-void
.end method
