.class public Lcom/scalado/caps/localtimewarp/LocalTimeWarp$Priority;
.super Ljava/lang/Object;
.source "LocalTimeWarp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/caps/localtimewarp/LocalTimeWarp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Priority"
.end annotation


# static fields
.field public static final QUALITY:Lcom/scalado/caps/localtimewarp/LocalTimeWarp$Priority;

.field public static final SPEED:Lcom/scalado/caps/localtimewarp/LocalTimeWarp$Priority;


# instance fields
.field private debugValue:Ljava/lang/String;

.field private intValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/scalado/caps/localtimewarp/LocalTimeWarp$Priority;

    const-string v1, "Quality"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/scalado/caps/localtimewarp/LocalTimeWarp$Priority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/scalado/caps/localtimewarp/LocalTimeWarp$Priority;->QUALITY:Lcom/scalado/caps/localtimewarp/LocalTimeWarp$Priority;

    new-instance v0, Lcom/scalado/caps/localtimewarp/LocalTimeWarp$Priority;

    const-string v1, "Speed"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/scalado/caps/localtimewarp/LocalTimeWarp$Priority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/scalado/caps/localtimewarp/LocalTimeWarp$Priority;->SPEED:Lcom/scalado/caps/localtimewarp/LocalTimeWarp$Priority;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/scalado/caps/localtimewarp/LocalTimeWarp$Priority;->debugValue:Ljava/lang/String;

    iput p2, p0, Lcom/scalado/caps/localtimewarp/LocalTimeWarp$Priority;->intValue:I

    return-void
.end method

.method static synthetic access$000(Lcom/scalado/caps/localtimewarp/LocalTimeWarp$Priority;)I
    .locals 1

    iget v0, p0, Lcom/scalado/caps/localtimewarp/LocalTimeWarp$Priority;->intValue:I

    return v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/scalado/caps/localtimewarp/LocalTimeWarp$Priority;->debugValue:Ljava/lang/String;

    return-object v0
.end method
