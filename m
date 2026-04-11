Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A87B175A9C
	for <linux-kernel-announce@vger.kernel.org>; Sat, 11 Apr 2026 12:50:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775911845; cv=none; b=YCGqWaKCEQ0ciRs5xu5u6xlG6AZ7YQRM0LvzamsF1oqCTGaV1sOidG1rA1LdfBHcFHomKD/vP7G85rc8invoLkKAU+hWqDbS2vo7J5AYK4Q760Jf3at790xWzZUIMJVH4/D+nkOMyXAWi+LdRjUMGdrCbPH0Uj4sCRWyDuRbzH4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775911845; c=relaxed/simple;
	bh=MExyf6TfqBstufs1hs9okgrEJ/hJtTk6IpV+umW97n8=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=dSVCxlozGTqKzU77U7/AsFNzwHbyi4+9UbOJzmluLp7W2YnJalD9Iprrsjxe7HbEP0HXJM36l/qgRBrNnGqkycJWr8k/HjLCFD7sQosoKbimsbV30kYtINyrtkHyCXjmZerBV/NOJRJw0moGASkk6MbGoKNZWqXE0jqbmSwmVV4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1775911845;
	bh=MExyf6TfqBstufs1hs9okgrEJ/hJtTk6IpV+umW97n8=;
	h=Subject:From:To:Date:From;
	b=RP58nYC0JcKSN5w/Xp0boEjgjD3p4M2/WtjxjioGYEDX0ALnmZmR2duMSJQeSEPCo
	 JWdH/i8HdfJxLHqalK6kxBpdCMKQGSNFUEfsxZCtG7alFvbEDYgcDVXVbo6GMJ/t4Z
	 X+6h1L9jZNfNZltpN9r2dHEok6goOaWTAORFCtlQ=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D6D28C4CEF7
	for <linux-kernel-announce@vger.kernel.org>; Sat, 11 Apr 2026 12:50:44 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id BC8743809A8D
	for <linux-kernel-announce@vger.kernel.org>; Sat, 11 Apr 2026 12:50:19 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.18.22 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sat, 11 Apr 2026 12:50:18 +0000
Message-Id: <20260411125018.release-6.18.22@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.18.22
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.18.22.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.18.22.xz

Linux kernel version 6.18.22 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.18.22.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.18.22.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.18.22.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.18.22/v6.18.21

