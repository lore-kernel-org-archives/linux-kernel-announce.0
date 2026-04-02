Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B17536921C
	for <linux-kernel-announce@vger.kernel.org>; Thu,  2 Apr 2026 11:20:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775128840; cv=none; b=WFCu7UDCe8cDHgHOgvUR98hW1WDC0mJ8pAmiuabzCp7xkFT42Ait2SghZjFtWEFP9G6LGDTINlpkj3LIuMT81Q3vTGX+eNJbepZoXtq2z/HjEnUeZHuRLcWuK/65U11lWLHm/0UMZRrQDX50h59Da2CS3OUsEuT3w75Ejg645PY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775128840; c=relaxed/simple;
	bh=/poNrlxIdPFK6ixyg96tualZ/XtVzxQL+uY+Z8PJru4=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=MjDeF/NuEaZMuhgfGmgIjHlVAbk4fPVT4BdQ5aHteFTkJF7rkGlu74fprttZip9cnuWz3V7z/f1s49UnqK6BBy5iLajsK+Q/SfNgtXj83hlml/r1bR/0qAy8idnBd6hHNnxNxe/76NqUMrrWqVpOTrvlVkLbNpa7uzMycsEuvww=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1775128840;
	bh=/poNrlxIdPFK6ixyg96tualZ/XtVzxQL+uY+Z8PJru4=;
	h=Subject:From:To:Date:From;
	b=Fjf1AtTsFeWB8BTpCFbKE5pe5np6wBm8jh/F+W5HCmIvygYB5uNrWszjgoMICl7AR
	 NqcsFmxTQzUFTTIuDrMzMMDOiy/Wyz9wHsw5zecP3Asrdp8NZeAZKhLFyCxsnMo6/o
	 RLrWhtXAsxIQhcNyOWnxyfryD8RFvWOsqFtSghik=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 67917C116C6
	for <linux-kernel-announce@vger.kernel.org>; Thu,  2 Apr 2026 11:20:38 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 061653809A05
	for <linux-kernel-announce@vger.kernel.org>; Thu,  2 Apr 2026 11:20:22 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.12.80 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 02 Apr 2026 11:20:20 +0000
Message-Id: <20260402112020.release-6.12.80@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.12.80
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.80.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.80.xz

Linux kernel version 6.12.80 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.80.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.80.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.80.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.12.80/v6.12.79

