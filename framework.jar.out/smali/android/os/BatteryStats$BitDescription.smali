.class public final Landroid/os/BatteryStats$BitDescription;
.super Ljava/lang/Object;
.source "BatteryStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/BatteryStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BitDescription"
.end annotation


# instance fields
.field public final mask:I

.field public final name:Ljava/lang/String;

.field public final shift:I

.field public final values:[Ljava/lang/String;


# direct methods
.method public constructor <init>(IILjava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .parameter "mask"
    .parameter "shift"
    .parameter "name"
    .parameter "values"

    .prologue
    .line 743
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 744
    iput p1, p0, Landroid/os/BatteryStats$BitDescription;->mask:I

    .line 745
    iput p2, p0, Landroid/os/BatteryStats$BitDescription;->shift:I

    .line 746
    iput-object p3, p0, Landroid/os/BatteryStats$BitDescription;->name:Ljava/lang/String;

    .line 747
    iput-object p4, p0, Landroid/os/BatteryStats$BitDescription;->values:[Ljava/lang/String;

    .line 748
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
    .parameter "mask"
    .parameter "name"

    .prologue
    .line 736
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 737
    iput p1, p0, Landroid/os/BatteryStats$BitDescription;->mask:I

    .line 738
    const/4 v0, -0x1

    iput v0, p0, Landroid/os/BatteryStats$BitDescription;->shift:I

    .line 739
    iput-object p2, p0, Landroid/os/BatteryStats$BitDescription;->name:Ljava/lang/String;

    .line 740
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/BatteryStats$BitDescription;->values:[Ljava/lang/String;

    .line 741
    return-void
.end method
