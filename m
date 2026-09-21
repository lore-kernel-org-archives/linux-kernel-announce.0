Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43CF533A6F1
	for <linux-kernel-announce@vger.kernel.org>; Mon, 21 Sep 2026 13:16:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789996591; cv=none; b=kiPniTYedzxNcpZywFUNbLBOIentq5dIuOAnYlI8OLJvbHgrHB2xs83wAe7JHVtr1t8517iOJvsYUog8Z6bJMoRk1O434viN+790DCz34wLVRADpJjtavIsrYURieVByoKtVrOo337uoGT7zTk5PI4Ddy/EDICPn8v/GJ4KVPxk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789996591; c=relaxed/simple;
	bh=RCEt1jbpmGmsb1wjBx2ciB0bkGdwMII38R6wgOo5esM=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=CpTa4/0hZsl8XImyYRzppKCuCdpu9PZgS+pKIbqf22Mka8EtQ6ahNd76zNvkPWLtBDxBQANfHFVHax6G4lockmF45rk2HuhB0YcWPTaVDbk8atp+slNFYhrUR5m1BZrDHjrNbggIJBtRMFnuNhyM4r3KVe8I3L091q4ni6Gx/Jc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1789996591;
	bh=RCEt1jbpmGmsb1wjBx2ciB0bkGdwMII38R6wgOo5esM=;
	h=Subject:From:To:Date:From;
	b=o4/PDRgT8BGyG2SoXC71cPC8GfWApolbuaRFGhUWrpArh55yNfMBKJclga87JM1yl
	 1FlgCU4Cmu73VdQ3Fb16IOftgJnvXkI1AX6UmHRRNeJr4SdCUBME7LOjekTkOUbjcc
	 9HH3Pbx6k+pFNSB6v5mwIOd+2fz71izEoRdZYRUI=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CEC801F000FF
	for <linux-kernel-announce@vger.kernel.org>; Mon, 21 Sep 2026 13:16:29 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 9650F3926656
	for <linux-kernel-announce@vger.kernel.org>; Mon, 21 Sep 2026 13:15:22 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.12.111 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Mon, 21 Sep 2026 13:15:21 +0000
Message-Id: <20260921131521.release-6.12.111@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.12.111
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.111.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.111.xz

Linux kernel version 6.12.111 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.111.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.111.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.111.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.12.111/v6.12.110

