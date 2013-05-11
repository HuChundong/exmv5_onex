.class final Lcom/android/internal/app/LocalePicker$1;
.super Landroid/widget/ArrayAdapter;
.source "LocalePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/LocalePicker;->getHtcStyleViewArrayAdapter(Landroid/content/Context;II[Lcom/android/internal/app/LocalePicker$LocaleInfo;)Landroid/widget/ArrayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/internal/app/LocalePicker$LocaleInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$itemBKGId:I

.field final synthetic val$mcontext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;II[Lcom/android/internal/app/LocalePicker$LocaleInfo;ILandroid/content/Context;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter
    .parameter

    .prologue
    .line 271
    iput p5, p0, Lcom/android/internal/app/LocalePicker$1;->val$itemBKGId:I

    iput-object p6, p0, Lcom/android/internal/app/LocalePicker$1;->val$mcontext:Landroid/content/Context;

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 274
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 275
    .local v6, view:Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    .line 276
    .local v2, leftpadding:I
    invoke-virtual {v6}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    .line 277
    .local v4, rightpadding:I
    invoke-virtual {v6}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    .line 278
    .local v5, toppadding:I
    invoke-virtual {v6}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    .line 279
    .local v0, bottompadding:I
    iget v7, p0, Lcom/android/internal/app/LocalePicker$1;->val$itemBKGId:I

    if-eqz v7, :cond_0

    .line 280
    iget v7, p0, Lcom/android/internal/app/LocalePicker$1;->val$itemBKGId:I

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackgroundResource(I)V

    .line 281
    invoke-virtual {v6, v2, v5, v4, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 283
    :cond_0
    const v7, 0x411000f

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 284
    .local v3, localeView:Landroid/widget/TextView;
    iget-object v7, p0, Lcom/android/internal/app/LocalePicker$1;->val$mcontext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const-string v8, "list_primary_m_bold"

    const-string v9, "style"

    const-string v10, "com.htc"

    invoke-virtual {v7, v8, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 286
    .local v1, fontStyle:I
    if-eqz v1, :cond_1

    if-eqz v3, :cond_1

    .line 288
    iget-object v7, p0, Lcom/android/internal/app/LocalePicker$1;->val$mcontext:Landroid/content/Context;

    invoke-virtual {v3, v7, v1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 289
    :cond_1
    return-object v6
.end method
