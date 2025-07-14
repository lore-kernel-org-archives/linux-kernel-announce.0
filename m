Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18ED0254848
	for <linux-kernel-announce@vger.kernel.org>; Mon, 14 Jul 2025 14:10:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752502227; cv=none; b=WKT6SzQTS7XKZyhDgaK1AXA2/r8JHQyv8v+d0iTnNmViH73FsygQWC5BqXmkaaZfWpfVmxEGryxlv91EDyVepMCCk8K5y54X4Tc0oWQpMoV7wWHu94g26zbJFXRH/XwFPQ0tUmS8mRVAj7m5pqVRUGpdkSPv3RWV/WN+/WKPqs8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752502227; c=relaxed/simple;
	bh=KKdTqdOXRRR8N0IOAB5qBZ/OJLOsSSGDlU8v0YNHEXk=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=VNpTCURvTSfjiwOcizML+Bnuq5ilqXqEiADhAWX3HqMQMZbJCVg5Tv8HXte50pOUgWiKOD8IgwpCQtq/IB4bPwshDSAGzovWuvf0QMr3LJmjAL/O5FgvLpTGL7kBh7hmvN95iy9SjNgH5C3otOvcq8f/SGy9P1EtlA+V22kbuw8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1752502227;
	bh=KKdTqdOXRRR8N0IOAB5qBZ/OJLOsSSGDlU8v0YNHEXk=;
	h=Subject:From:To:Date:From;
	b=aHOJaM24W6F+J+qRoJ6zUw6XA4WOXfeRr2IOFFAJJeZlgLgXT5Yq7K5Rht8OR4NXW
	 8eqFnUcsm5MCbdWRSy7mkXbJzDH1AKoOKYfXM8KUdaCrb/ENAXyDraE+fUx5qW8bpp
	 7YUuXHKr6ijHFtCev93y/x943cTXsgW6p6tVoHcM=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 99429C4CEED
	for <linux-kernel-announce@vger.kernel.org>; Mon, 14 Jul 2025 14:10:26 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id B19B1383BA05
	for <linux-kernel-announce@vger.kernel.org>; Mon, 14 Jul 2025 14:10:48 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 5.15.188 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Mon, 14 Jul 2025 14:10:47 +0000
Message-Id: <20250714141047.release-5.15.188@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 5.15.188
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.188.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.15.188.xz

Linux kernel version 5.15.188 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.188.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.15.188.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.188.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v5.15.188/v5.15.187

