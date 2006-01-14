From: Andrew Morton <akpm@osdl.org>
Subject: 2.6.15-mm4
Date: Sat, 14 Jan 2006 05:51:53 -0800
Message-ID: <20060114055153.04684592.akpm@osdl.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-announce-owner@vger.kernel.org>
Sender: linux-kernel-announce-owner@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-kernel-announce@vger.kernel.org


ftp://ftp.kernel.org/pub/linux/kernel/people/akpm/patches/2.6/2.6.15/2.6.15-mm4/

(Will take an hour or so to mirror)



- Lots of mutex conversions

- FUSE update

- nfsd update (mainly nfs4)

- CPU scheduler update

- A few new syscalls.



Boilerplate:

- -mm kernel commit activity can be reviewed by subscribing to the
  mm-commits mailing list.

        echo "subscribe mm-commits" | mail majordomo@vger.kernel.org

- If you hit a bug in -mm and it's not obvious which patch caused it, it is
  most valuable if you can perform a bisection search to identify which patch
  introduced the bug.  Instructions for this process are at

	http://www.zip.com.au/~akpm/linux/patches/stuff/bisecting-mm-trees.txt

  But beware that this process takes some time (around ten rebuilds and
  reboots), so consider reporting the bug first and if we cannot immediately
  identify the faulty patch, then perform the bisection search.

- When reporting bugs, please try to Cc: the relevant maintainer and mailing
  list on any email.



Changes since 2.6.15-mm3:

 linus.patch
 git-acpi.patch
 git-arm.patch
 git-audit.patch
 git-blktrace.patch
 git-cfq.patch
 git-cifs.patch
 git-dvb.patch
 git-ia64.patch
 git-infiniband.patch
 git-input.patch
 git-mmc.patch
 git-netdev-all.patch
 git-ntfs.patch
 git-ocfs2.patch
 git-serial.patch
 git-sym2.patch
 git-pcmcia.patch
 git-scsi-misc.patch
 git-sas-jg.patch
 git-watchdog.patch

 Subsystem trees
 
-kdump-emove-remaining-crash_notes-variable-from-arch-powerpc-kernel-machine_kexecc.patch
-git-blkdev-fixup.patch
-git-blktrace-build-fix.patch
-git-cfq-fixup.patch
-gregkh-driver-spi-simple-spi-framework-kconfig-simplification.patch
-spi-add-spi_butterfly-driver.patch
-spi-remove-fastcall-crap.patch
-git-drm-radeon-warning-fixes.patch
-git-drm-build-fix.patch
-git-drm-via_dmablit-build-fix.patch
-corruption-during-e100-mdi-register-access.patch
-corruption-during-e100-mdi-register-access-tidy.patch
-config_airo-needs-config_crypto.patch
-gfar-fix-compile-error.patch
-gianfar-mii-use-proper-resource-for-mii-memory-region.patch
-phy-added-a-macro-to-represent-the-string-format-used-to.patch
-gianfar-use-new-phy_id_fmt-macro.patch
-hash-table-corruption-in-bond_albc.patch
-net-fix-2.patch
-net-fix-3.patch
-net-fix-4.patch
-msix-save-restore-for-suspend-resume.patch
-msix-save-restore-for-suspend-resume-fix.patch
-remove-msi-save-restore-code-in-specific-driver.patch
-aic7xxx-fix-timer-handling.patch
-gregkh-usb-usb-remove-usb_audio-and-usb_midi-drivers.patch
-gregkh-usb-usbip-build-fix.patch
-gregkh-usb-usbip-more-dead-code.patch
-ftdi_sio-new-pid-for-pcdj-dac2.patch
-x86_64-compat-cfi.patch
-x86_64-amd-constant-tsc.patch
-x86_64-bound-gate.patch
-x86_64-remove-die-if-kernel.patch
-x86_64-die-trap-info.patch
-x86_64-doublefault-cleanup.patch
-x86_64-iret-handling.patch
-x86_64-pagefault-vmalloc.patch
-x86_64-dma32-fix-mask.patch
-x86_64-dont-remove-nt.patch
-x86_64-bitops-constraints.patch
-x86_64-shrink-additional-cpus.patch
-x86_64-hotplug-cpu-doc.patch
-x86_64-remove-hlt-counter.patch
-x86_64-constant-tsc-update.patch
-x86_64-cpufreq-constant-tsc.patch
-x86_64-amd-cpuid-update.patch
-x86_64-check-ioapic.patch
-x86_64-apic-cmdline.patch
-x86_64-debug-stack.patch
-x86_64-another-mb-for-smpbootc.patch
-x86_64-increase-MCE-bank-counts.patch
-x86_64-Remove-preempt-disable-calls-in-lowlevel-IPI.patch
-x86_64-Dont-IPI-to-offline-cpus-on-shutdown.patch
-x86_64-dont-save-eflags-in-x86-64-switch_to.patch
-x86_64-fix-single-step-handling-for-32bit-processes.patch
-x86_64-fix-page-fault-from-show_trace.patch
-x86_64-fls-in-asm-for-x86_64.patch
-x86_64-iommu-newline.patch
-x86_64-remove-pci-bus.patch
-x86_64-dmi.patch
-x86_64-fxsave-prefix.patch
-x86_64-acpi-map.patch
-x86_64-slit-validate.patch
-x86_64-alloc-pages-node-default.patch
-x86_64-bus-node-default.patch
-x86_64-delay-overflow.patch
-x86_64-biarch-compile.patch
-x86_64-pad-gdt.patch
-x86_64-module-fault.patch
-x86_64-compat-sg.patch
-x86_64-compat-flag.patch
-x86_64-pf-error-symbolic.patch
-x86_64-pgtable-static-inline.patch
-x86_64-kernel-debug-trap.patch
-x86_64-no-subjiffy-profile.patch
-x86_64-i386-timer-broadcast.patch
-x86_64-x86_64-timer-broadcast.patch
-x86_64-iommu-boundary.patch
-x86_64-numa-style.patch
-x86_64-numa-printk-level.patch
-x86_64-idle-notifier.patch
-x86_64-srat-zero-length-nodes.patch
-x86_64-dma-ops.patch
-x86_64-cleanup-copy-user.patch
-x86_64-mce-printk.patch
-x86_64-nvidia-ck8-sound.patch
-x86_64-map-single-zero-warn.patch
-x86_64-cpumask-read-mostly.patch
-x86_64-apic_write_atomic.patch
-x86_64-unexport-pci_consistent.patch
-x86_64-remove-duplicate-exports.patch
-x86_64-write-apic-id.patch
-x86_64-cpumask-include.patch
-x86_64-intel-no-tsc-sync.patch
-x86_64-alternative-io.patch
-x86_64-alternative-vsyscall.patch
-x86_64-gtod-intel-no-sync.patch
-x86_64-fix-serialize-cpu.patch
-x86_64-vsyscall-force-inline.patch
-x86_64-time-style.patch
-x86_64-early_cpu_to_node.patch
-x86_64-cpu-pda-cleanup.patch
-x86_64-cpu_pda_local_simple.patch
-x86_64-nmi-warning.patch
-x86_64-noiommu-printk.patch
-x86_64-vector-fixup.patch
-x86_64-remove-kdb-vector.patch
-x86_64-sparse-warnings-fix.patch
-x86_64-invalid-operand-name.patch
-x86_64-allow-setting-rf-in-eflags.patch
-x86_64-io-apic-memorize.patch
-x86_64-cleanup-enter_lazy_tlb.patch
-x86_64-atomic-include.patch
-x86_64-inclusion-of-scalemp-vsmp-architecture-patches---vsmp_align.patch
-x86_64-inclusion-of-scalemp-vsmp-architecture-patches---vsmp_arch.patch
-x86_64-ioapic-virtual-wire-mode-fix.patch
-x86_64-remove-obsolete-segments.patch
-x86_64-out-of-line-numa-funcs.patch
-x86_64-sparse-warning-cleanups-x86_64-code.patch
-git-xfs-remove-is_noatime.patch
-xfs_iomap-warning-fixes.patch
-restore-kern_emerg-to-each-line-printed-by-bad_page.patch
-mm-gfp_atomic-comments.patch
-include-asm-h8300-pageh-remove-unused-kthread_size-define.patch
-uml-fix-missing-kbuild_basename.patch
-uml-update-kconfig-help.patch
-uml-revert-compile-time-option-checking.patch
-uml-eliminate-doubled-boot-output.patch
-uml-fix-debug-output-on-x86_64.patch
-uml-kill-an-unused-variable.patch
-device_shutdown-can-loop-if-the-driver-frees-itself.patch
-kdump-add-dmesg-gdbmacro-into-document.patch
-doc-refer-to-kdump-in-oops-tracingtxt.patch
-ext3-fix-documentation-of-online-resizing.patch
-allow-reading-cmos-day-of-week-register.patch
-tclk-fix-typos-exclamation-mark-frenzy-and-missing-device-id-on.patch
-cs89x0-fix-setting-of-allow_dma.patch
-cs89x0-fix-the-kconfig-help-text.patch
-kdump-vmcore-compilation-warning-fix.patch
-maintainers-remove-dead-project.patch
-random-get-rid-of-sparse-warning.patch
-synclink_gt-remove-unnecessary-page-alignment.patch
-fix-assertion-failure-in-reiserfsjournaled-quotas.patch
-kprobes-fix-unloading-of-self-probed-module.patch
-kprobes-fix-race-in-recovery-of-reentrant-probe.patch
-remove-unused-out_pio-label-in-i810_audio.patch
-ipmi-use-config_dmi-instead-of-config_x86.patch
-fix-processing-of-obsolete-style-setup-options.patch
-v4l-dvb-3120-adds-32-bit-compatibility-for-v4l2-fix.patch
-v4l-dont-ignore-return-from-i2c_add_driver-for-tuner-3036.patch
-media-video-pci-probing-for-stradis-driver.patch
-media-video-stradis-video-little-cleanup.patch
-media-video-stradis-lindent.patch
-media-video-stradis-kconfig-url-changed.patch
-drivers-media-conversions-from-kmallocmemset-to-kzcalloc.patch
-sched-add-cacheflush-asm.patch
-scheduler-cache-hot-autodetect.patch
-sched-add-sched_batch-policy.patch
-missing-helper-task_stack_page.patch
-alpha-task_thread_info.patch
-alpha-task_stack_page.patch
-alpha-task_pt_regs.patch
-amd64-task_thread_info.patch
-amd64-task_pt_regs.patch
-amd64-task_stack_page.patch
-i386-task_thread_info.patch
-i386-fix-task_pt_regs.patch
-i386-task_stack_page.patch
-sparc64-task_thread_info.patch
-sparc64-task_stack_page.patch
-sparc64-task_pt_regs.patch
-sh-task_pt_regs.patch
-sh-task_thread_info.patch
-sh-task_stack_page.patch
-sparc-task_thread_info.patch
-sparc-task_stack_page.patch
-uml-task_thread_info.patch
-uml-task_stack_page.patch
-s390-task_pt_regs.patch
-s390-task_stack_page.patch
-xtensa-task_pt_regs-task_stack_page.patch
-v850-task_stack_page-task_pt_regs.patch
-m32r-task_pt_regs-task_stack_page-task_thread_info.patch
-frv-task_thread_info-task_stack_page.patch
-m68k-task_stack_page.patch
-m68knommu-task_stack_page.patch
-parisc-task_stack_page-task_thread_info.patch
-h8300-task_stack_page.patch
-arm-task_thread_info.patch
-arm-task_pt_regs.patch
-arm-end_of_stack.patch
-arm-task_stack_page.patch
-arm26-task_thread_info.patch
-arm26-task_pt_regs.patch
-arm26-task_stack_page.patch
-sh64-task_stack_page.patch
-powerpc-task_thread_info.patch
-powerpc-task_stack_page.patch
-cris-task_pt_regs.patch
-cris-fix-kstk_eip.patch
-cris-task_thread_info.patch
-ia64-task_thread_info.patch
-ia64-task_pt_regs.patch
-mips-task_pt_regs.patch
-mips-task_thread_info.patch
-mips-task_stack_page.patch
-death-of-get_thread_info-put_thread_info.patch
-m68k-compile-fix-hardirq-checks-were-in-wrong-place.patch
-m68k-compile-fix-updated-vmlinuxlds-to-include-lock_text.patch
-m68k-namespace-pollution-fix-custom-amiga_custom.patch
-m68k-switch-mac-miscc-to-direct-use-of-appropriate-cuda-pmu-maciisi-requests.patch
-m68k-dumb-typo-in-atyfb.patch
-m68k-oktagon-makefile-fix.patch
-m68k-isa_typesex-should-be-exported.patch
-m68k-static-vs-extern-in-scch.patch
-m68k-static-vs-extern-in-sun3intsh.patch
-m68k-static-vs-extern-in-amigaintsh.patch
-m68k-memory-input-should-be-an-lvalue-mac-miscc.patch
-m68k-broken-constraints-on-mulul.patch
-m68k-bogus-function-argument-types-sun3_pgtableh.patch
-m68k-lvalues-abuse-in-mac8390.patch
-m68k-dmasound_paulac-lvalues-abuse-from-m68k-cvs.patch
-m68k-lvalues-abuse-in-dmasound.patch
-m68k-compile-fixes-for-dmasound-static-vs-extern.patch
-m68k-basic-iomem-annotations.patch
-m68k-basic-__user-annotations.patch
-m68k-signal-__user-annotations.patch
-m68k-rtc-__user-annotations.patch
-m68k-syscalls-__user-annotation.patch
-m68k-checksum-__user-annotations.patch
-m68k-amiflop-__user-annotations.patch
-m68k-ataflop-__user-annotations-null-noise-removal.patch
-m68k-amiserial-__user-annotations.patch
-m68k-dsp56k-__user-annotations.patch
-m68k-amifb-__user-annotations.patch
-m68k-zorro-__user-annotations.patch
-m68k-dmasound-__user-annotations.patch
-m68k-null-noise-removal.patch
-m68k-cast-in-strnlen-switched-to-unsigned-long.patch
-m68k-moved-initialisation-of-conswitchp-from-subarches-to-global-arch-setup.patch
-m68k-kill-mach_floppy_setup-convert-to-proper-__setup-in-drivers.patch
-m68k-fix-use-of-void-foovoid-asmbar-in-trapsc.patch
-m68k-fix-reference-to-init_task-in-vmlinux-sun3lds.patch
-m68k-fix-macfb-init.patch
-m68k-fix-pio-case-in-esp.patch
-m68k-console-code-in-heads-needs-framebuffer-support-built-in.patch
-uninline-capable.patch
-unlinline-a-bunch-of-other-functions.patch
-move-capable-to-capabilityh.patch
-capable-capabilityh-fs.patch
-capable-capabilityh-net.patch
-capable-capabilityh-arch.patch
-drivers-scsi-qla2xxx-possible-cleanups.patch

 Merged upstream (to a maintainer tree or to mainline)

+uml-fix-symbol-for-mktime.patch

 UML build fix

+fix-for-config_numa-without-config_swap.patch

 Build fix

+sem2mutex-drivers-acpi.patch
+sem2mutex-drivers-char-agp.patch
+sem2mutex-sound.patch
+sem2mutex-sound-pci.patch
+sem2mutex-sound-2.patch
+sem2mutex-audit_netlink_sem.patch
+sem2mutex-audit_netlink_sem-fix.patch
+sem2mutex-drivers-cpufreq.patch
+sem2mutex-drivers-char-drm.patch
+sem2mutex-drivers-media.patch
+sem2mutex-drivers-media-2.patch
+sem2mutex-drivers-hwmon.patch
+sem2mutex-clean-up-arch-ia64-hp-sim-simserialc.patch
+sem2mutex-arch-ia64-ia32-sys_ia32c.patch
+sem2mutex-arch-ia64-kernel-perfmonc.patch
+sem2mutex-drivers-ieee1394.patch
+sem2mutex-drivers-input-serio-gameport-joystick.patch
+sem2mutex-drivers-input-inputc.patch
+sem2mutex-mtd-doc2000c.patch
+sem2mutex-drivers-mtd.patch
+sem2mutex-drivers-net-irda.patch
+sem2mutex-net.patch
+sem2mutex-sungem-zoran-cassini-ipw2x00.patch
+sem2mutex-net-2.patch
+sem2mutex-drivers-pcmcia.patch
+sem2mutex-drivers-scsi-scsi_transport_spi.patch
+sem2mutex-drivers-scsi-32-9xxx.patch
+sem2mutex-drivers-usb.patch
+sem2mutex-mm-slabc.patch
+sem2mutex-security.patch
+sem2mutex-kcapic.patch
+sem2mutex-drivers-raw-connector-dcdbas-ppp_generic.patch
+sem2mutex-drivers-scsi-ide-scsic.patch
+sem2mutex-kernel.patch
+sem2mutex-fs.patch
+sem2mutex-drivers-block-pktcdvdc.patch
+sem2mutex-drivers-block-floppyc.patch
+sem2mutex-drivers-char.patch
+sem2mutex-misc-static-one-file-mutexes.patch
+sem2mutex-blockdev-2.patch
+sem2mutex-blockdev-2-git-blktrace-fix.patch
+sem2mutex-quota.patch
+sem2mutex-inotify.patch
+sem2mutex-tty.patch
+sem2mutex-eventpoll.patch
+sem2mutex-vfs_rename_mutex.patch
+sem2mutex-iprune.patch
+sem2mutex-jbd-j_checkpoint_mutex.patch
+sem2mutex-kprobes.patch
+sem2mutex-ipc-idsem.patch
+sem2mutex-fs-libfsc.patch
+sem2mutex-fs-seq_filec.patch
+sem2mutex-drivers-block-loopc.patch
+sem2mutex-drivers-block-nbdc.patch
+sem2mutex-sound-oss.patch
+sem2mutex-drivers-ide.patch
+sem2mutex-drivers-md.patch

 Mutex conversions

+ali5451-add-pci_device-and-defines-in-snd_ali_ids.patch

 Sound device support

+fix-ordering-on-requeued-request-drainage.patch

 Block request ordering fix

+gregkh-driver-add-css-ccw-_bus_type-probe-remove-shutdown-methods.patch
+gregkh-driver-device_shutdown-can-loop-if-the-driver-frees-itself.patch
+gregkh-driver-spi-remove-fastcall-crap.patch
+gregkh-driver-spi-add-spi_butterfly-driver.patch

 Driver tree updates

+spi-set-kset-of-master-class-dev-explicitly.patch
+kobject-dont-oops-on-null-kobjectname.patch

 Updates thereto

+git-dvb-callbacks-fix.patch

 git-dvb build error workaround

+gregkh-i2c-i2c-convert-i2c-to-mutexes.patch

 I2C tree update

-input-attempt-to-re-synchronize-mouse-every-5-seconds.patch

 Dropped - new version merged

+sata-acpi-build.patch
+sata-acpi-build-fix.patch
+libata-debugging-support.patch
+sata-acpi-objects-support.patch
+additional-libata-parameters.patch

 ACPI support for SATA

+tulip-remove-duplicate-pci-ids.patch

 Tulip cleanup

+drivers-net-s2ioc-make-code-static.patch
+drivers-net-arcnet-possible-cleanups.patch
+uli526x-warning-fix.patch
+cassini-printk-fix.patch

 netdev fixlets and cleanups

+af_key-set-message-type.patch

 Net fix

+gregkh-pci-pci-hotplug-powerpc-module-build-break.patch
+gregkh-pci-pci-per-platform-ia64_-first-last-_device_vector-definitions.patch
-gregkh-pci-shot-accross-the-bow.patch

 PCI tree updates

-revert-gregkh-pci-shot-accross-the-bow.patch

 Greg dropped this.

-pass-proper-device-from-buslogic-to-scsi-layer.patch
-scsi-aha1740c-handle-scsi_add_host-failure.patch
-scsi-arm-ecoscsic-handle-scsi_add_host-failure.patch
-scsi-pcmcia-fdomain_stubc-handle-scsi_add_host-failure.patch
-add-scsi_add_host-failure-handling-for-nsp32.patch

 Dropped - these had problems.

+git-scsi-misc-buslogic-fix.patch
+drivers-scsi-qla2xxx-possible-cleanups.patch

 scsi fix and cleanup

+areca-raid-driver-arcmsr-update2.patch

 Update areca-raid-linux-scsi-driver.patch

+gregkh-usb-usb-ftdi_sio-new-pid-for-pcdj-dac2.patch
+gregkh-usb-ftdi-two-new-atik-based-usb-astronomical-ccd-cameras.patch
+gregkh-usb-usb-add-et61x51-video4linux2-driver.patch
+gregkh-usb-usb-remove-the-obsolete-usb_midi-driver.patch
+gregkh-usb-usb-convert-a-bunch-of-usb-semaphores-to-mutexes.patch
+gregkh-usb-usb-usbip-build-fix.patch
+gregkh-usb-usb-usbip-more-dead-code-fix.patch

 USB tree updates

+gregkh-usb-usb-convert-a-bunch-of-usb-semaphores-to-mutexes-fixes.patch

 Fix it

+w1-u64-is-not-long-long.patch

 Fix printk warning

+net2280-warning-fix.patch

 Fix a warning

+watchdog-winsystems-epx-c3-sbc.patch
+watchdog-winsystems-epx-c3-sbc-tidy.patch

 New watchdog driver

+x86_64-powernow-init.patch
+x86_64-add-__meminit-for-memory-hotplug.patch
+x86_64-lapic-resume-uses-correct-base-address.patch

 x86_64 tree updates

+x86_64-config-unwind-info-ppc64-fix.patch

 Fix it for ppc64

+direct-migration-v9-migrate_pages-extension-fix2.patch
+direct-migration-v9-migrate_pages-extension-fix3.patch

 Fix direct-migration-v9-migrate_pages-extension.patch

+add-tmpfs-options-for-memory-placement-policies.patch

 tmpfs pagecache memory policy

+powerpc-add-support-for-the-mpc83xx-watchdog.patch
+powerpc-add-support-for-the-mpc83xx-watchdog-tidies.patch

 Another watchdog driver

+make-config_regparm-enabled-by-default.patch
+i386-fix-stack-dump-loglevel.patch
+i386-fix-stack-dump-loglevel-fixes.patch
+i386-remove-gcc-version-check-for-config_regparm.patch

 x86 updates

+swsusp-low-level-interface-rev-2-fix.patch

 Fix swsusp-low-level-interface-rev-2.patch

+s390-des-crypto-code-cleanup.patch
+s390-des-crypto-code-speedup.patch
+s390-aes-crypto-code-fixes.patch
+s390-sha256-crypto-code-fix.patch
+s390-show_task-oops.patch
+s390-show_task-oops-fix.patch
+s390-sigcontexth-vs-__user.patch
+s390-fix-cpcmd-calls-on-up.patch
+s390-spinlock-fixes.patch
+s390-add-dummy-pm_power_off.patch
+s390-fix-blk_queue_ordered-call-in-dasdc.patch
+s390-cputime-misaccounting.patch
+s390-chps-array-too-short.patch
+s390-email-address-change.patch
+s390-fix-blk_queue_ordered-call-in-dasdc-fixup.patch

 s390 update

+partitions-read-rio-karma-partition-table.patch
+cleanup-cdrom_ioctl.patch
+kill-cdrom-dev_ioctl-method.patch
+include-asm-bitopsh-fix-more-0ul-size-typos.patch
+move-read_mostly-definition-to-asm-cacheh.patch
+cpuset-oom-lock-fix.patch
+kernel-cpusetc-mutex-conversion.patch
+kernel-cpusetc-mutex-conversion-fix.patch
+kernel-cpusetc-mutex-conversion-fix-fix.patch
+convert-kernel-rcupdatecrcu_barrier_sema-to-mutex.patch
+kernel-kernel-cpuc-to-mutexes.patch
+convert-fs-9p-to-mutexes-fix-locking-bugs.patch
+introduce-__iowrite32_copy.patch
+add-faster-__iowrite32_copy-routine-for-x86_64.patch
+listh-dont-evaluate-macro-args-multiple-times.patch
+ext2-remove-d_splice_alias-null-check-from-ext2_lookup.patch
+ext3-remove-d_splice_alias-null-check-from-ext3_lookup.patch
+isofs-remove-d_splice_alias-null-check-from-isofs_lookup.patch
+reiserfs-remove-d_splice_alias-null-check-from-reiserfs_lookup.patch
+quota-make-useless-quota-error-message-informative.patch
+abandon-gcc-295x-mainc-tidy.patch
+ncpfs-remove-kmalloc-wrapper.patch
+smbfs-remove-kmalloc-wrapper.patch
+reiserfs-remove-kmalloc-wrapper.patch
+reiserfs-use-__gfp_nofail-instead-of-yield-and-retry-loop.patch
+prevent-trident-driver-from-grabbing-pcnet32-hardware.patch
+3c59x-improve-usage-of-netif_carrier_onoff.patch
+dell_rbu-fix-bug-5854.patch
+cs89x0-credit-dmitry-pervushin.patch
+cs89x0-use-elif-instead-of-else-if-endif.patch
+cs89x0-use-u16-for-device-register-data.patch
+cs89x0-add-ixdp2351-support.patch
+remove-unused-tmp_buf_sems.patch
+nlm-kernel-parameters-update.patch
+update-kernel-parameterstxt-iosched-to-spell-out-anticipatory.patch

 It's 5:41AM and I can't be bothered describing all these.

+add-sys-fs.patch
+fuse-fuse_copy_finish-order-fix.patch
+fuse-fix-request_end.patch
+fuse-handle-error-init-reply.patch
+fuse-uninline-some-functions.patch
+fuse-miscellaneous-cleanup.patch
+fuse-introduce-unified-request-state.patch
+fuse-introduce-list-for-requests-under-i-o.patch
+fuse-extend-semantics-of-connected-flag.patch
+fuse-make-fuse-connection-a-kobject.patch
+fuse-add-number-of-waiting-requests-attribute.patch
+fuse-add-connection-aborting.patch
+fuse-add-asynchronous-request-support.patch
+fuse-move-init-handling-to-inodec.patch
+fuse-read-request-initialization.patch
+fuse-use-asynchronous-read-requests-for-readpages.patch
+fuse-update-documentation-for-sysfs.patch

 FUSE update

+2tb-files-st_blocks-is-invalid-when-calling-stat64.patch
+2tb-files-add-blkcnt_t.patch
+2tb-files-add-blkcnt_t-fixes.patch
+2tb-files-change-type-of-kstatfs-entries.patch

 Fix bugs in support of monster files

+ext3-get-blocks-maping-multiple-blocks-at-a-once-ext3_getblk-fix.patch

 Fix ext3-get-blocks-maping-multiple-blocks-at-a-once.patch

+bluetooth-fix-problem-with-sco.patch

 bluetooth device workaround (needs work)

+time-reduced-ntp-rework-part-2-fix.patch

 Fix time-reduced-ntp-rework-part-2.patch

+time-generic-timekeeping-infrastructure-use-generic-timeofday-interfaces-in-hrtimer--ktime.patch

 Fix time-generic-timekeeping-infrastructure.patch

+time-fix-cpu-frequency-detection-fix.patch

 Fix time patches in -mm.

+nfsd-check-error-status-from-nfsd_sync_dir.patch
+nfsd-remove-inline-from-a-couple-of-large-nfs-functions.patch
+svcrpc-save-and-restore-the-daddr-field-when-request-deferred.patch
+nfsd4-misc-lock-fixes.patch
+nfsd4-fix-nfsd4_lock-cleanup-on-failure.patch
+nfsd4-rename-lk_stateowner.patch
+nfsd4-remove-release_state_owner.patch
+nfsd4-fix-check_for_locks.patch
+nfsd4-operation-debugging.patch
+svcrpc-gss-handle-the-gss_s_continue.patch
+svcrpc-gss-server-context-init-failure-handling.patch
+svcrpc-gss-svc-context-creation-error-handling.patch
+nfsd4-fix-open-of-recovery-directory.patch
+nfsd4-recovery-lookup-dir-check.patch
+nfsd4-handle-replays-of-failed-open-reclaims.patch
+nfsd4-no-replays-on-unconfirmed-owners.patch
+nfsd4-nfs4statec-miscellaneous-goto-removals.patch
+nfsd4-simplify-process-open1-logic.patch
+nfsd4-dont-create-on-open-that-fails-due-to-err_grace.patch
+nfsd4-fix-open_downgrade.patch
+nfsd4-fix-bug-in-rdattr_error-return.patch
+nfsd4-clean-up-settattr-code.patch
+nfsd-vfsc-endianness-fixes.patch
+nfsd4_truncate-bogus-return-value.patch
+nfserr_serverfault-returned-host-endian.patch
+nfsd4_lock-returns-bogus-values-to-clients.patch
+knfsd-fix-some-more-errno-nfserr-confusion-in-vfsc.patch
+knfsd-provide-missing-nfsv2-part-of-patch-for-checking-vfs_getattr.patch

 nfsd update

+sched-cleanup_task_activated.patch
+sched-alter_uninterruptible_sleep_interactivity.patch
+sched-make_task_noninteractive_use_sleep_type.patch
+sched-dont_decrease_idle_sleep_avg.patch
+sched-include_noninteractive_sleep_in_idle_detect.patch

 CPU scheduler updates

-sched-fix-wrong-priority-calculation.patch

 Dropped - it's being redone

+neofb-take-existing-display-configuration-as-default.patch
+gx1fb-try-to-play-nicer-with-various-bioses.patch
+fbdev-sanitize-fb_ioctl-prototype.patch
+fbdev-sanitize-fb_mmap-prototype-fix.patch
+fbdev-sanitize-fb_mmap-prototype.patch
+fbdev-update-maintainers-list.patch

 fbdev updates

+generic-sys_rt_sigsuspend.patch
+generic-sys_rt_sigsuspend-asmlinkage-fix.patch
+handle-tif_restore_sigmask-for-frv.patch
+handle-tif_restore_sigmask-for-i386.patch
+tif_restore_sigmask-support-for-arch-powerpc.patch
+add-pselect-ppoll-system-call-implementation.patch
+add-pselect-ppoll-system-call-implementation-rename-types.patch
+add-pselect-ppoll-system-call-implementation-tidy.patch
+add-pselect-ppoll-system-call-implementation-fix.patch
+add-pselect-ppoll-system-calls-on-i386.patch

 New syscalls

+unshare-system-call-v5-documentation-file.patch
+unshare-system-call-v5-system-call-handler.patch
+unshare-system-call-v5-unshare-filesystem-info.patch
+unshare-system-call-v5-unshare-namespace.patch
+unshare-system-call-v5-unshare-vm.patch
+unshare-system-call-v5-unshare-files.patch
+unshare-system-call-v5-system-call-registration-for-i386.patch
+unshare-system-call-v5-system-call-registration-for-powerpc.patch
+unshare-system-call-v5-system-call-registration-for-x86_64.patch

 unshare() syscall

+ia64-const-f_ops-fix.patch
+mark-f_ops-const-in-the-inode-gadgetfs-fix.patch

 Fix mark-f_ops-const-in-the-inode.patch

+i386-enable-4k-stacks-by-default.patch

 Test 4k stacks some more

+drivers-net-wireless-hostap-hostap_mainc-shouldnt-include-c-files.patch

 netdev cleanup

+unexport-get_wchan.patch

 Unexport a symbol




All 730 patches:

ftp://ftp.kernel.org/pub/linux/kernel/people/akpm/patches/2.6/2.6.15/2.6.15-mm4/patch-list

