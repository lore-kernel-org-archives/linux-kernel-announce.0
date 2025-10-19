Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B5571DE8A4
	for <linux-kernel-announce@vger.kernel.org>; Sun, 19 Oct 2025 14:55:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760885758; cv=none; b=eD1fY+Oc7vfSYGjtMUuYqVxeI2htjecF8qyLX7q/y9X/4eHVVYMC1fAkIz7sePQGEjG7JnyB+LT9f/CgMj7CgnwEXXcTeUUruvTB6E05luTtDUeXC3KkfJleDPB+LqKwewYsq8+g5u8dqfqEdN5pndyr/h0oC3mzClUgjnOIMl8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760885758; c=relaxed/simple;
	bh=4UQsODGm1VmleAictt+oK4ecDX4ZIZauRn0mrKFAuGI=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=G+oNurmIHAvbWxO0qRdcpyaiLQhTyfsTQK8Z27SdT8DMlDV1GxTdvp5IHA15rDIoNgyoysptjz9VQ2yxyloJeGyB47yu3CDSHwmp9jVtnp5FtuPwmTWv/nbGiKd5/GZC16K0HBuwXecSs7x1khwdvShQ9U43qL04l3AH8nW0vjk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1760885758;
	bh=4UQsODGm1VmleAictt+oK4ecDX4ZIZauRn0mrKFAuGI=;
	h=Subject:From:To:Date:From;
	b=XtohplARZuaV4OcSEHDj0cxBIk6dTUhsD/wIvVytzM59ga8w2G2tu72+N3Brb3rzs
	 njqFmPd47aP5hG+ktNsFBNXR0hyoZ+O/NW92xQo+28QNZ9JX36U1eJkmdsRBRqAt1D
	 w5xt7iWH1FzqD8fiDsKsgtDxlpqgfga0wFHEGQps=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 00EAAC4CEE7
	for <linux-kernel-announce@vger.kernel.org>; Sun, 19 Oct 2025 14:55:57 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id B1AF439FEB71
	for <linux-kernel-announce@vger.kernel.org>; Sun, 19 Oct 2025 14:55:41 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.12.54 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sun, 19 Oct 2025 14:55:40 +0000
Message-Id: <20251019145540.release-6.12.54@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.12.54
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.54.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.54.xz

Linux kernel version 6.12.54 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.54.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.54.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.54.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.12.54/v6.12.53

