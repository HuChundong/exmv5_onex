.class public Lcom/htc/wrap/android/util/HtcWrapDayOfMonthCursor;
.super Landroid/util/DayOfMonthCursor;
.source "HtcWrapDayOfMonthCursor.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>(IIII)V
    .locals 0
    .parameter "year"
    .parameter "month"
    .parameter "dayOfMonth"
    .parameter "weekStartDay"

    .prologue
    .line 15
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/util/DayOfMonthCursor;-><init>(IIII)V

    .line 17
    return-void
.end method
