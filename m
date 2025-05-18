Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7AF3C1FFC46
	for <linux-kernel-announce@vger.kernel.org>; Sun, 18 May 2025 06:55:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747551301; cv=none; b=nW1ACqcaAkKjVpA8ShU54wkDZeRPAzejNHXGS9jx7H1kJaD4kaTxxq72HUiDQW5qWS9OMsQD0WCTVLOfKltwyz/RCdiacIzV3QlOUSWqJbiJQ0QRTcaKM058yYj+0WZYbbvKpdi6oL9CWUQfAqcMDCPrRP80K1M/ePoL7EeES2I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747551301; c=relaxed/simple;
	bh=lgoijihT9N9jHFentavfdeTqC3P+nzgE+x9zk8LFHKk=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=a40N53o4sUficgNpmGFf2IVrsTQDzPtPXmC6ZT4LY7cc0P8e5oL1bVm/Kq6XbIAryj3tAn43g+bbGNfYnssgTrcmntwZBP/eQ4qGFNhcfR0+3aQ3nWQL9LAXwCs52urOLbVVet1T65BmRVdsKmSjlipac1CTJ2dR7vBQvUIkm6w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1747551301;
	bh=lgoijihT9N9jHFentavfdeTqC3P+nzgE+x9zk8LFHKk=;
	h=Subject:From:To:Date:From;
	b=OhnfWT0GnzCuiYYj+EnwTgbPjHCU9rap6lbhUVDbDtBSMWjHRBYoz1XAiwGERYlcD
	 xOcfWJf7LwC4ivsgGfEwMfCUZ8984IrltYwKhLK7NfYInrZlab69+9Mud24iItIZVT
	 fx1rzBfaZKovjo9mE3gooDy8Zrg71FgDBRGo1UXc=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EF5B5C4CEE7
	for <linux-kernel-announce@vger.kernel.org>; Sun, 18 May 2025 06:55:00 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id ADC46380AAFB
	for <linux-kernel-announce@vger.kernel.org>; Sun, 18 May 2025 06:55:38 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.12.29 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sun, 18 May 2025 06:55:37 +0000
Message-Id: <20250518065537.release-6.12.29@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.12.29
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.29.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.29.xz

Linux kernel version 6.12.29 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.29.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.29.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.29.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.12.29/v6.12.28

