Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 92C54236421
	for <linux-kernel-announce@vger.kernel.org>; Fri, 25 Apr 2025 09:20:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745572800; cv=none; b=nt6wgSOPZi4JuPABna/dWlqqLt85E0pkPPnxBSTTsEnNOlrzZFXVPF65rU96cOux6ij7tJOhw3hMrYNWs11tISHhqBQdyoxU+IhWENvOw5QssMtN/MhhfeF1JCM46twhZgHhiRq277uROEPBpihagixZjUwgDygJeqCnxxhGOs4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745572800; c=relaxed/simple;
	bh=8R3jFlqpytI5ODN49FOxqKfzPJ8oBmjwm8aXkMXClFA=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=tEhFxCDJsYW3ZdqUwXbuIFg8yZ5T+xuzaE3UHjX4vD/9vxU+ruWQm8jB7jGDFKgHfUN602hC/sBn48rXx1MVXvbFpLk04ZVFnc+fl8H5EKJ5SuXGHi3AzEfTFrr1W52fBXZTdUQimJLFY9LlK1HORw+mSpHrb1deqmZ54n+oktg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1745572800;
	bh=8R3jFlqpytI5ODN49FOxqKfzPJ8oBmjwm8aXkMXClFA=;
	h=Subject:From:To:Date:From;
	b=UFYOmy0uYFqovsWJemCAQdxlUkiit0c/60KBsWsUqbXo7aT5x4MewGVim162RIrB3
	 3gHDNJBiawt4YOKQsDhiASKUDa4S1XXcITLbTa2LtxLt1wk5xDzoKu2vtqODBdqlTE
	 IZdQb2VFW6k2pt9vKE7BSHtLA5Knbyv22PfigFSY=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2ABE2C4CEEB
	for <linux-kernel-announce@vger.kernel.org>; Fri, 25 Apr 2025 09:20:00 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id EEC46380CFD7
	for <linux-kernel-announce@vger.kernel.org>; Fri, 25 Apr 2025 09:20:39 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.14.4 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Fri, 25 Apr 2025 09:20:38 +0000
Message-Id: <20250425092038.release-6.14.4@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.14.4
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.14.4.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.14.4.xz

Linux kernel version 6.14.4 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.14.4.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.14.4.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.14.4.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.14.4/v6.14.3

