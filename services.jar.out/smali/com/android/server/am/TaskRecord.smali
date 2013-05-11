.class Lcom/android/server/am/TaskRecord;
.super Lcom/android/server/am/ThumbnailHolder;
.source "TaskRecord.java"


# static fields
.field static final HTC_RECENT_APP_FUSION:Z


# instance fields
.field final affinity:Ljava/lang/String;

.field affinityIntent:Landroid/content/Intent;

.field askedCompatMode:Z

.field hidden:Z

.field intent:Landroid/content/Intent;

.field lastActiveTime:J

.field numActivities:I

.field origActivity:Landroid/content/ComponentName;

.field realActivity:Landroid/content/ComponentName;

.field rootWasReset:Z

.field stringName:Ljava/lang/String;

.field final taskId:I

.field userId:I

.field visible:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    sget-boolean v0, Lcom/android/server/am/ActivityManagerService;->HTC_RECENT_APP_FUSION:Z

    sput-boolean v0, Lcom/android/server/am/TaskRecord;->HTC_RECENT_APP_FUSION:Z

    return-void
.end method

.method constructor <init>(ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;)V
    .locals 1
    .parameter "_taskId"
    .parameter "info"
    .parameter "_intent"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/server/am/ThumbnailHolder;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/TaskRecord;->hidden:Z

    .line 59
    iput p1, p0, Lcom/android/server/am/TaskRecord;->taskId:I

    .line 60
    iget-object v0, p2, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    .line 61
    invoke-virtual {p0, p3, p2}, Lcom/android/server/am/TaskRecord;->setIntent(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V

    .line 63
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->updateVisibility()V

    .line 64
    return-void
.end method


# virtual methods
.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 8
    .parameter "pw"
    .parameter "prefix"

    .prologue
    const/16 v7, 0x80

    const/16 v6, 0x7d

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 126
    iget v0, p0, Lcom/android/server/am/TaskRecord;->numActivities:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->rootWasReset:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/server/am/TaskRecord;->userId:I

    if-eqz v0, :cond_1

    .line 127
    :cond_0
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "numActivities="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/TaskRecord;->numActivities:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 128
    const-string v0, " rootWasReset="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->rootWasReset:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 129
    const-string v0, " userId="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 131
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 132
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "affinity="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 134
    :cond_2
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_3

    .line 135
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 136
    .local v1, sb:Ljava/lang/StringBuilder;
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "intent={"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    move v4, v2

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/Intent;->toShortString(Ljava/lang/StringBuilder;ZZZZ)V

    .line 138
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 139
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 141
    .end local v1           #sb:Ljava/lang/StringBuilder;
    :cond_3
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->affinityIntent:Landroid/content/Intent;

    if-eqz v0, :cond_4

    .line 142
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 143
    .restart local v1       #sb:Ljava/lang/StringBuilder;
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "affinityIntent={"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->affinityIntent:Landroid/content/Intent;

    move v4, v2

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/Intent;->toShortString(Ljava/lang/StringBuilder;ZZZZ)V

    .line 145
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 146
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 148
    .end local v1           #sb:Ljava/lang/StringBuilder;
    :cond_4
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->origActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_5

    .line 149
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "origActivity="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->origActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 152
    :cond_5
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_6

    .line 153
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "realActivity="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 156
    :cond_6
    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->askedCompatMode:Z

    if-nez v0, :cond_7

    .line 157
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "askedCompatMode="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->askedCompatMode:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 160
    :cond_7
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "visible="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->visible:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 161
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "hidden="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->hidden:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 163
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "lastThumbnail="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/ThumbnailHolder;->lastThumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 164
    const-string v0, " lastDescription="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/ThumbnailHolder;->lastDescription:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 165
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "lastActiveTime="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/android/server/am/TaskRecord;->lastActiveTime:J

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    .line 166
    const-string v0, " (inactive for "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 167
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->getInactiveDuration()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    const-string v0, "s)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 168
    return-void
.end method

.method getInactiveDuration()J
    .locals 4

    .prologue
    .line 71
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/am/TaskRecord;->lastActiveTime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method hide()V
    .locals 2

    .prologue
    .line 268
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/TaskRecord;->hidden:Z

    .line 269
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/TaskRecord;->setVisibility(ZLjava/lang/String;)V

    .line 270
    return-void
.end method

.method setIntent(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V
    .locals 6
    .parameter "_intent"
    .parameter "info"

    .prologue
    const/4 v4, 0x0

    .line 75
    iput-object v4, p0, Lcom/android/server/am/TaskRecord;->stringName:Ljava/lang/String;

    .line 77
    iget-object v3, p2, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    if-nez v3, :cond_5

    .line 78
    if-eqz p1, :cond_1

    .line 82
    invoke-virtual {p1}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object v3

    if-nez v3, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 83
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 84
    .end local p1
    .local v0, _intent:Landroid/content/Intent;
    invoke-virtual {v0, v4}, Landroid/content/Intent;->setSelector(Landroid/content/Intent;)V

    .line 85
    invoke-virtual {v0, v4}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    move-object p1, v0

    .line 90
    .end local v0           #_intent:Landroid/content/Intent;
    .restart local p1
    :cond_1
    iput-object p1, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    .line 91
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    :goto_0
    iput-object v3, p0, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    .line 92
    iput-object v4, p0, Lcom/android/server/am/TaskRecord;->origActivity:Landroid/content/ComponentName;

    .line 113
    :goto_1
    iget-object v3, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getFlags()I

    move-result v3

    const/high16 v4, 0x20

    and-int/2addr v3, v4

    if-eqz v3, :cond_2

    .line 117
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/am/TaskRecord;->rootWasReset:Z

    .line 120
    :cond_2
    iget-object v3, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v3, :cond_3

    .line 121
    iget-object v3, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3}, Landroid/os/UserId;->getUserId(I)I

    move-result v3

    iput v3, p0, Lcom/android/server/am/TaskRecord;->userId:I

    .line 123
    :cond_3
    return-void

    :cond_4
    move-object v3, v4

    .line 91
    goto :goto_0

    .line 94
    :cond_5
    new-instance v1, Landroid/content/ComponentName;

    iget-object v3, p2, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    iget-object v5, p2, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    invoke-direct {v1, v3, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    .local v1, targetComponent:Landroid/content/ComponentName;
    if-eqz p1, :cond_6

    .line 97
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 98
    .local v2, targetIntent:Landroid/content/Intent;
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 99
    invoke-virtual {v2, v4}, Landroid/content/Intent;->setSelector(Landroid/content/Intent;)V

    .line 100
    invoke-virtual {v2, v4}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 103
    iput-object v2, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    .line 104
    iput-object v1, p0, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    .line 105
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/am/TaskRecord;->origActivity:Landroid/content/ComponentName;

    goto :goto_1

    .line 107
    .end local v2           #targetIntent:Landroid/content/Intent;
    :cond_6
    iput-object v4, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    .line 108
    iput-object v1, p0, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    .line 109
    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, p2, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    iget-object v5, p2, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/server/am/TaskRecord;->origActivity:Landroid/content/ComponentName;

    goto :goto_1
.end method

.method setVisibility(ZLjava/lang/String;)V
    .locals 3
    .parameter "visible"
    .parameter "reason"

    .prologue
    .line 244
    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->hidden:Z

    if-eqz v0, :cond_0

    .line 246
    const/4 p1, 0x0

    .line 247
    const-string p2, "hidden"

    .line 250
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/am/TaskRecord;->visible:Z

    .line 251
    sget-boolean v0, Lcom/android/server/am/ActivityManagerService;->DEBUG_RECENT_TASKS:Z

    if-eqz v0, :cond_1

    .line 252
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", visible:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/am/TaskRecord;->visible:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", reason:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    :cond_1
    sget-boolean v0, Lcom/android/server/am/TaskRecord;->HTC_RECENT_APP_FUSION:Z

    if-eqz v0, :cond_2

    .line 261
    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->visible:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/am/ThumbnailHolder;->lastThumbnail:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 262
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ThumbnailHolder;->lastThumbnail:Landroid/graphics/Bitmap;

    .line 265
    :cond_2
    return-void
.end method

.method show()V
    .locals 1

    .prologue
    .line 273
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/TaskRecord;->hidden:Z

    .line 274
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 171
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->stringName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 172
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->stringName:Ljava/lang/String;

    .line 194
    :goto_0
    return-object v1

    .line 174
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 175
    .local v0, sb:Ljava/lang/StringBuilder;
    const-string v1, "TaskRecord{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    const-string v1, " #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    iget v1, p0, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 179
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 180
    const-string v1, " A "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    :goto_1
    const-string v1, " U "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    iget v1, p0, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 193
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 194
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/TaskRecord;->stringName:Ljava/lang/String;

    goto :goto_0

    .line 182
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    if-eqz v1, :cond_2

    .line 183
    const-string v1, " I "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 185
    :cond_2
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->affinityIntent:Landroid/content/Intent;

    if-eqz v1, :cond_3

    .line 186
    const-string v1, " aI "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->affinityIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 189
    :cond_3
    const-string v1, " ??"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method touchActiveTime()V
    .locals 2

    .prologue
    .line 67
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/TaskRecord;->lastActiveTime:J

    .line 68
    return-void
.end method

.method updateVisibility()V
    .locals 9

    .prologue
    .line 199
    const/4 v4, 0x1

    .line 200
    .local v4, visible:Z
    const-string v3, "default"

    .line 203
    .local v3, reason:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getFlags()I

    move-result v5

    const/high16 v6, 0x80

    and-int/2addr v5, v6

    if-eqz v5, :cond_0

    .line 205
    const/4 v4, 0x0

    .line 206
    const-string v3, "exclude from recents"

    .line 211
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    .line 212
    .local v2, pm:Landroid/content/pm/IPackageManager;
    iget-object v5, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    if-eqz v5, :cond_3

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    .line 213
    .local v0, baseIntent:Landroid/content/Intent;
    :goto_0
    iget-object v5, p0, Lcom/android/server/am/TaskRecord;->origActivity:Landroid/content/ComponentName;

    if-eqz v5, :cond_4

    .line 214
    iget-object v5, p0, Lcom/android/server/am/TaskRecord;->origActivity:Landroid/content/ComponentName;

    const/4 v6, 0x0

    iget v7, p0, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-interface {v2, v5, v6, v7}, Landroid/content/pm/IPackageManager;->getActivityInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;

    move-result-object v5

    if-nez v5, :cond_1

    .line 215
    const/4 v4, 0x0

    .line 216
    const-string v3, "no activity info"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    .end local v0           #baseIntent:Landroid/content/Intent;
    .end local v2           #pm:Landroid/content/pm/IPackageManager;
    :cond_1
    :goto_1
    iget-object v5, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v5

    const-string v6, "android.intent.category.HOME"

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 236
    const/4 v4, 0x0

    .line 237
    const-string v3, "category home"

    .line 240
    :cond_2
    invoke-virtual {p0, v4, v3}, Lcom/android/server/am/TaskRecord;->setVisibility(ZLjava/lang/String;)V

    .line 241
    return-void

    .line 212
    .restart local v2       #pm:Landroid/content/pm/IPackageManager;
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->affinityIntent:Landroid/content/Intent;

    goto :goto_0

    .line 218
    .restart local v0       #baseIntent:Landroid/content/Intent;
    :cond_4
    if-eqz v0, :cond_5

    .line 219
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget v8, p0, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-interface {v2, v5, v6, v7, v8}, Landroid/content/pm/IPackageManager;->queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 220
    const/4 v4, 0x0

    .line 221
    const-string v3, "no intent activities"

    goto :goto_1

    .line 224
    :cond_5
    const/4 v4, 0x0

    .line 225
    const-string v3, "no activity / intent"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 227
    .end local v0           #baseIntent:Landroid/content/Intent;
    .end local v2           #pm:Landroid/content/pm/IPackageManager;
    :catch_0
    move-exception v1

    .line 228
    .local v1, e:Ljava/lang/Exception;
    const-string v5, "ActivityManager"

    const-string v6, "Unknown error in updateVisibility()"

    invoke-static {v5, v6, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 229
    const/4 v4, 0x0

    .line 230
    const-string v3, "unknown error"

    goto :goto_1
.end method
