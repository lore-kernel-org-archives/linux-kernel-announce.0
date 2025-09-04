Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26A8F3BBF2
	for <linux-kernel-announce@vger.kernel.org>; Thu,  4 Sep 2025 13:45:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756993542; cv=none; b=ZbWxr+wy8Ebm3YpRPaL25oUgmx8hOidVkwv9hV5I5BEZU+6MEIfASK0eN7RRAlYaddpBeTnbMt8GLeNC8wE77LrFjSj3HAgeXaKZBWp6MtaYYPMOAGiHJoW9R9aYrG19fz4ULpmP+Iy6pNpgHiQyDfsSEmpAGP8bvCDxVMmhcfY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756993542; c=relaxed/simple;
	bh=SSTFzT2Pd+SNOgdNTSNihsAZbegrl1HFAYF+bagNcBY=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=dXz6x2eZnz12tQulGZiqE+BendzenG7W8leJCbgaSfUxTBVxDeNT0v2XQTGsQh89HxSN6/skzpPp3heArsYA6NpYSKSHHnZaqz+W2nHWPSfMNLKcrVWGC8vza+MVlIpMDKSZMhPY/Rtr7XKqU9dUfhnmxkqnladQoXcBd3TYAlU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1756993542;
	bh=SSTFzT2Pd+SNOgdNTSNihsAZbegrl1HFAYF+bagNcBY=;
	h=Subject:From:To:Date:From;
	b=neT5y700TJpGWGpag4kCISA3G3THA/7NtA0cPnLbX7aL7jl+IBUZjaG1QP+YrVz9O
	 qE09mDl0AOS0Ol53uLJonBnDENwf0CvYUxX+hKgh2/Ni3Tgx47gPOuU/Zndh9X+i/J
	 WN7s26b4VWSc8A3osP5a24Y8vKaD9M8W6vBuCIR4=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CDC86C4CEF0
	for <linux-kernel-announce@vger.kernel.org>; Thu,  4 Sep 2025 13:45:41 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id B273B383BF69
	for <linux-kernel-announce@vger.kernel.org>; Thu,  4 Sep 2025 13:45:47 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.6.104 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 04 Sep 2025 13:45:46 +0000
Message-Id: <20250904134546.release-6.6.104@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.6.104
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.104.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.104.xz

Linux kernel version 6.6.104 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.104.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.104.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.104.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.6.104/v6.6.103

