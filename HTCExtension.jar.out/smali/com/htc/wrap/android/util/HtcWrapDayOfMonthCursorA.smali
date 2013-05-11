.class public Lcom/htc/wrap/android/util/HtcWrapDayOfMonthCursorA;
.super Ljava/lang/Object;
.source "HtcWrapDayOfMonthCursorA.java"


# instance fields
.field private cursor:Landroid/util/DayOfMonthCursor;


# direct methods
.method public constructor <init>(IIII)V
    .locals 1
    .parameter "year"
    .parameter "month"
    .parameter "dayOfMonth"
    .parameter "weekStartDay"

    .prologue
    .line 13
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Landroid/util/DayOfMonthCursor;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/util/DayOfMonthCursor;-><init>(IIII)V

    iput-object v0, p0, Lcom/htc/wrap/android/util/HtcWrapDayOfMonthCursorA;->cursor:Landroid/util/DayOfMonthCursor;

    .line 15
    return-void
.end method


# virtual methods
.method public down()Z
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/htc/wrap/android/util/HtcWrapDayOfMonthCursorA;->cursor:Landroid/util/DayOfMonthCursor;

    invoke-virtual {v0}, Landroid/util/DayOfMonthCursor;->down()Z

    move-result v0

    return v0
.end method

.method public getColumnOf(I)I
    .locals 1
    .parameter "day"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/htc/wrap/android/util/HtcWrapDayOfMonthCursorA;->cursor:Landroid/util/DayOfMonthCursor;

    invoke-virtual {v0, p1}, Landroid/util/DayOfMonthCursor;->getColumnOf(I)I

    move-result v0

    return v0
.end method

.method public getDayAt(II)I
    .locals 1
    .parameter "row"
    .parameter "column"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/htc/wrap/android/util/HtcWrapDayOfMonthCursorA;->cursor:Landroid/util/DayOfMonthCursor;

    invoke-virtual {v0, p1, p2}, Landroid/util/DayOfMonthCursor;->getDayAt(II)I

    move-result v0

    return v0
.end method

.method public getMonth()I
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/htc/wrap/android/util/HtcWrapDayOfMonthCursorA;->cursor:Landroid/util/DayOfMonthCursor;

    invoke-virtual {v0}, Landroid/util/DayOfMonthCursor;->getMonth()I

    move-result v0

    return v0
.end method

.method public getOffset()I
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/htc/wrap/android/util/HtcWrapDayOfMonthCursorA;->cursor:Landroid/util/DayOfMonthCursor;

    invoke-virtual {v0}, Landroid/util/DayOfMonthCursor;->getOffset()I

    move-result v0

    return v0
.end method

.method public getSelectedColumn()I
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/htc/wrap/android/util/HtcWrapDayOfMonthCursorA;->cursor:Landroid/util/DayOfMonthCursor;

    invoke-virtual {v0}, Landroid/util/DayOfMonthCursor;->getSelectedColumn()I

    move-result v0

    return v0
.end method

.method public getSelectedDayOfMonth()I
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/htc/wrap/android/util/HtcWrapDayOfMonthCursorA;->cursor:Landroid/util/DayOfMonthCursor;

    invoke-virtual {v0}, Landroid/util/DayOfMonthCursor;->getSelectedDayOfMonth()I

    move-result v0

    return v0
.end method

.method public getSelectedMonthOffset()I
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/htc/wrap/android/util/HtcWrapDayOfMonthCursorA;->cursor:Landroid/util/DayOfMonthCursor;

    invoke-virtual {v0}, Landroid/util/DayOfMonthCursor;->getSelectedMonthOffset()I

    move-result v0

    return v0
.end method

.method public getSelectedRow()I
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/htc/wrap/android/util/HtcWrapDayOfMonthCursorA;->cursor:Landroid/util/DayOfMonthCursor;

    invoke-virtual {v0}, Landroid/util/DayOfMonthCursor;->getSelectedRow()I

    move-result v0

    return v0
.end method

.method public getWeekStartDay()I
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/htc/wrap/android/util/HtcWrapDayOfMonthCursorA;->cursor:Landroid/util/DayOfMonthCursor;

    invoke-virtual {v0}, Landroid/util/DayOfMonthCursor;->getWeekStartDay()I

    move-result v0

    return v0
.end method

.method public getYear()I
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/htc/wrap/android/util/HtcWrapDayOfMonthCursorA;->cursor:Landroid/util/DayOfMonthCursor;

    invoke-virtual {v0}, Landroid/util/DayOfMonthCursor;->getYear()I

    move-result v0

    return v0
.end method

.method public isSelected(II)Z
    .locals 1
    .parameter "row"
    .parameter "column"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/htc/wrap/android/util/HtcWrapDayOfMonthCursorA;->cursor:Landroid/util/DayOfMonthCursor;

    invoke-virtual {v0, p1, p2}, Landroid/util/DayOfMonthCursor;->isSelected(II)Z

    move-result v0

    return v0
.end method

.method public isWithinCurrentMonth(II)Z
    .locals 1
    .parameter "row"
    .parameter "column"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/htc/wrap/android/util/HtcWrapDayOfMonthCursorA;->cursor:Landroid/util/DayOfMonthCursor;

    invoke-virtual {v0, p1, p2}, Landroid/util/DayOfMonthCursor;->isWithinCurrentMonth(II)Z

    move-result v0

    return v0
.end method

.method public left()Z
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/htc/wrap/android/util/HtcWrapDayOfMonthCursorA;->cursor:Landroid/util/DayOfMonthCursor;

    invoke-virtual {v0}, Landroid/util/DayOfMonthCursor;->left()Z

    move-result v0

    return v0
.end method

.method public right()Z
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/htc/wrap/android/util/HtcWrapDayOfMonthCursorA;->cursor:Landroid/util/DayOfMonthCursor;

    invoke-virtual {v0}, Landroid/util/DayOfMonthCursor;->right()Z

    move-result v0

    return v0
.end method

.method public setSelectedDayOfMonth(I)V
    .locals 1
    .parameter "dayOfMonth"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/htc/wrap/android/util/HtcWrapDayOfMonthCursorA;->cursor:Landroid/util/DayOfMonthCursor;

    invoke-virtual {v0, p1}, Landroid/util/DayOfMonthCursor;->setSelectedDayOfMonth(I)V

    .line 39
    return-void
.end method

.method public setSelectedRowColumn(II)V
    .locals 1
    .parameter "row"
    .parameter "col"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/htc/wrap/android/util/HtcWrapDayOfMonthCursorA;->cursor:Landroid/util/DayOfMonthCursor;

    invoke-virtual {v0, p1, p2}, Landroid/util/DayOfMonthCursor;->setSelectedRowColumn(II)V

    .line 27
    return-void
.end method

.method public up()Z
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/htc/wrap/android/util/HtcWrapDayOfMonthCursorA;->cursor:Landroid/util/DayOfMonthCursor;

    invoke-virtual {v0}, Landroid/util/DayOfMonthCursor;->up()Z

    move-result v0

    return v0
.end method
