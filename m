Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 023D81DF75C
	for <linux-kernel-announce@vger.kernel.org>; Fri,  2 May 2025 06:05:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746165900; cv=none; b=KqhgMDRyOCKHTgekWzEZP2wRNGZeBgvmg4jkTjPR2d24AC7lU4iy4mm3glpINwQmREVXAP77T7S2Ftijv2PwyehHT2O5JD+/aDuSQBeZxPlJ72/rgGECLiFlhMb/qMxVp3ylKoHiFwE8mtUYr2DYFzyry/mjM7ObGCJxorQoVuM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746165900; c=relaxed/simple;
	bh=6ZVp9NYFJMWS+6vbNMzSi7b0K/VFX7CXjOhKTj0haJs=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=Gr8foccMg/y+Z5n2EPMzmBdBpT1ivWplfZUerr/cVM7j6vIsptnrl9dMpkZaJFKdwvKAqanj3fQ5oqO+vsPr6bJlYI57liPyAuCi93O5d9ZlJea5an0Y+noFkBFnzz08f0YQgwVZ+goy2/1ch1ChUclBN2Go3PZRPLUT0wlgDJc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1746165900;
	bh=6ZVp9NYFJMWS+6vbNMzSi7b0K/VFX7CXjOhKTj0haJs=;
	h=Subject:From:To:Date:From;
	b=uhXHNP0eQQKOXUPEgZZS77P0+he0s+bGaIECOt+U9awSvJk5FKmPd8pT+C4HPQzn6
	 DvDt4801eo1tKMrovsskoyj7ETX9i3tfQw/AAcOMOg0/parru5DXdqjNE4mQlzqiE+
	 BMpa7e4VdV58p697zT3/CZgiNFto7o7w8ukjLLWA=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D800AC4CEE4
	for <linux-kernel-announce@vger.kernel.org>; Fri,  2 May 2025 06:04:59 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 33B4D3822D62
	for <linux-kernel-announce@vger.kernel.org>; Fri,  2 May 2025 06:05:40 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 5.15.181 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Fri, 02 May 2025 06:05:38 +0000
Message-Id: <20250502060538.release-5.15.181@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 5.15.181
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.181.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.15.181.xz

Linux kernel version 5.15.181 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.181.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.15.181.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.181.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v5.15.181/v5.15.180

