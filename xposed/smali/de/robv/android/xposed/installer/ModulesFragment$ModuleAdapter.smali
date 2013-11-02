.class Lde/robv/android/xposed/installer/ModulesFragment$ModuleAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ModulesFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/robv/android/xposed/installer/ModulesFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ModuleAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lde/robv/android/xposed/installer/ModulesFragment$XposedModule;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lde/robv/android/xposed/installer/ModulesFragment;


# direct methods
.method public constructor <init>(Lde/robv/android/xposed/installer/ModulesFragment;Landroid/content/Context;)V
    .locals 2
    .parameter
    .parameter "context"

    .prologue
    .line 114
    iput-object p1, p0, Lde/robv/android/xposed/installer/ModulesFragment$ModuleAdapter;->this$0:Lde/robv/android/xposed/installer/ModulesFragment;

    .line 115
    const v0, 0x7f030004

    const v1, 0x7f0a000e

    invoke-direct {p0, p2, v0, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II)V

    .line 116
    return-void
.end method

.method static synthetic access$0(Lde/robv/android/xposed/installer/ModulesFragment$ModuleAdapter;)Lde/robv/android/xposed/installer/ModulesFragment;
    .locals 1
    .parameter

    .prologue
    .line 113
    iget-object v0, p0, Lde/robv/android/xposed/installer/ModulesFragment$ModuleAdapter;->this$0:Lde/robv/android/xposed/installer/ModulesFragment;

    return-object v0
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const v7, 0x7f0a000c

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 120
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 122
    .local v3, view:Landroid/view/View;
    if-nez p2, :cond_0

    .line 124
    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    new-instance v6, Lde/robv/android/xposed/installer/ModulesFragment$ModuleAdapter$1;

    invoke-direct {v6, p0}, Lde/robv/android/xposed/installer/ModulesFragment$ModuleAdapter$1;-><init>(Lde/robv/android/xposed/installer/ModulesFragment$ModuleAdapter;)V

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 144
    :cond_0
    invoke-virtual {p0, p1}, Lde/robv/android/xposed/installer/ModulesFragment$ModuleAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lde/robv/android/xposed/installer/ModulesFragment$XposedModule;

    .line 146
    .local v2, item:Lde/robv/android/xposed/installer/ModulesFragment$XposedModule;
    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    iget-object v6, v2, Lde/robv/android/xposed/installer/ModulesFragment$XposedModule;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 147
    iget-object v5, v2, Lde/robv/android/xposed/installer/ModulesFragment$XposedModule;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 149
    const v5, 0x7f0a000d

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iget-object v6, v2, Lde/robv/android/xposed/installer/ModulesFragment$XposedModule;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 151
    const v5, 0x7f0a000f

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 152
    .local v1, descriptionText:Landroid/widget/TextView;
    iget-object v5, v2, Lde/robv/android/xposed/installer/ModulesFragment$XposedModule;->description:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    .line 153
    iget-object v5, v2, Lde/robv/android/xposed/installer/ModulesFragment$XposedModule;->description:Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    const v5, -0x888889

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 160
    :goto_0
    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 161
    .local v0, checkbox:Landroid/widget/CheckBox;
    iget-object v5, p0, Lde/robv/android/xposed/installer/ModulesFragment$ModuleAdapter;->this$0:Lde/robv/android/xposed/installer/ModulesFragment;

    #getter for: Lde/robv/android/xposed/installer/ModulesFragment;->enabledModules:Ljava/util/Set;
    invoke-static {v5}, Lde/robv/android/xposed/installer/ModulesFragment;->access$0(Lde/robv/android/xposed/installer/ModulesFragment;)Ljava/util/Set;

    move-result-object v5

    iget-object v6, v2, Lde/robv/android/xposed/installer/ModulesFragment$XposedModule;->packageName:Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 162
    const v5, 0x7f0a0010

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 164
    .local v4, warningText:Landroid/widget/TextView;
    iget-object v5, v2, Lde/robv/android/xposed/installer/ModulesFragment$XposedModule;->minVersion:Ljava/lang/String;

    if-nez v5, :cond_2

    .line 165
    invoke-virtual {v0, v8}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 166
    iget-object v5, p0, Lde/robv/android/xposed/installer/ModulesFragment$ModuleAdapter;->this$0:Lde/robv/android/xposed/installer/ModulesFragment;

    const v6, 0x7f080022

    invoke-virtual {v5, v6}, Lde/robv/android/xposed/installer/ModulesFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 182
    :goto_1
    return-object v3

    .line 156
    .end local v0           #checkbox:Landroid/widget/CheckBox;
    .end local v4           #warningText:Landroid/widget/TextView;
    :cond_1
    iget-object v5, p0, Lde/robv/android/xposed/installer/ModulesFragment$ModuleAdapter;->this$0:Lde/robv/android/xposed/installer/ModulesFragment;

    invoke-virtual {v5}, Lde/robv/android/xposed/installer/ModulesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v6, 0x7f08001d

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    const v5, -0x338900

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 168
    .restart local v0       #checkbox:Landroid/widget/CheckBox;
    .restart local v4       #warningText:Landroid/widget/TextView;
    :cond_2
    iget-object v5, p0, Lde/robv/android/xposed/installer/ModulesFragment$ModuleAdapter;->this$0:Lde/robv/android/xposed/installer/ModulesFragment;

    #getter for: Lde/robv/android/xposed/installer/ModulesFragment;->installedXposedVersion:Ljava/lang/String;
    invoke-static {v5}, Lde/robv/android/xposed/installer/ModulesFragment;->access$1(Lde/robv/android/xposed/installer/ModulesFragment;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    iget-object v5, v2, Lde/robv/android/xposed/installer/ModulesFragment$XposedModule;->minVersion:Ljava/lang/String;

    iget-object v6, p0, Lde/robv/android/xposed/installer/ModulesFragment$ModuleAdapter;->this$0:Lde/robv/android/xposed/installer/ModulesFragment;

    #getter for: Lde/robv/android/xposed/installer/ModulesFragment;->installedXposedVersion:Ljava/lang/String;
    invoke-static {v6}, Lde/robv/android/xposed/installer/ModulesFragment;->access$1(Lde/robv/android/xposed/installer/ModulesFragment;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lde/robv/android/xposed/installer/PackageChangeReceiver;->compareVersions(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_3

    .line 169
    invoke-virtual {v0, v8}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 170
    iget-object v5, p0, Lde/robv/android/xposed/installer/ModulesFragment$ModuleAdapter;->this$0:Lde/robv/android/xposed/installer/ModulesFragment;

    const v6, 0x7f080021

    invoke-virtual {v5, v6}, Lde/robv/android/xposed/installer/ModulesFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v9, [Ljava/lang/Object;

    .line 171
    iget-object v7, v2, Lde/robv/android/xposed/installer/ModulesFragment$XposedModule;->minVersion:Ljava/lang/String;

    invoke-static {v7}, Lde/robv/android/xposed/installer/PackageChangeReceiver;->trimVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    .line 170
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 173
    :cond_3
    iget-object v5, v2, Lde/robv/android/xposed/installer/ModulesFragment$XposedModule;->minVersion:Ljava/lang/String;

    sget-object v6, Lde/robv/android/xposed/installer/PackageChangeReceiver;->MIN_MODULE_VERSION:Ljava/lang/String;

    invoke-static {v5, v6}, Lde/robv/android/xposed/installer/PackageChangeReceiver;->compareVersions(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    if-gez v5, :cond_4

    .line 174
    invoke-virtual {v0, v8}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 175
    iget-object v5, p0, Lde/robv/android/xposed/installer/ModulesFragment$ModuleAdapter;->this$0:Lde/robv/android/xposed/installer/ModulesFragment;

    const v6, 0x7f080023

    invoke-virtual {v5, v6}, Lde/robv/android/xposed/installer/ModulesFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    .line 176
    iget-object v7, v2, Lde/robv/android/xposed/installer/ModulesFragment$XposedModule;->minVersion:Ljava/lang/String;

    invoke-static {v7}, Lde/robv/android/xposed/installer/PackageChangeReceiver;->trimVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    sget-object v7, Lde/robv/android/xposed/installer/PackageChangeReceiver;->MIN_MODULE_VERSION:Ljava/lang/String;

    aput-object v7, v6, v9

    .line 175
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 179
    :cond_4
    invoke-virtual {v0, v9}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 180
    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1
.end method
