Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE9A9145B0B
	for <linux-kernel-announce@vger.kernel.org>; Fri,  5 Jul 2024 07:50:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720165849; cv=none; b=hlGkSWulZ2K+4mnHldw2Qy65iqhDym60upESrOIEHqc20uz8Q/OhQguAh95ZHFH/iVLdyZZSpqm/3O/N6KDKm0xjRcu7+OuewnEogrNhT+DEI6tPPmkX6rpVAh99rquQUQh7AvuvzAw05ZHYbPtLk4pCTwxrDW2SdcOlz3WczAM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720165849; c=relaxed/simple;
	bh=9OR1rv3MTfwkzkPvl3rN9MABIduM57RMXq4I/PYSu7g=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=QLdunSflStiILgaW+9z8laoGn7o6AQUvUkdcRBMGU5fqUAWgtJj3WCRzUYllZVtk907hx8S7V/0OUoRKxoyJbUkywPagsWkHEzA/wgt97zaFsgP9uXZVU0rXsMueqaqyk1/SBOO3Cheuf0Aajof/dwnaG3U9hkEHFa4sBYnUqz8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1720165849;
	bh=9OR1rv3MTfwkzkPvl3rN9MABIduM57RMXq4I/PYSu7g=;
	h=Subject:From:To:Date:From;
	b=bjPGXjBMI5zmdD48vweYTveIsJZfaHw312P3eLnMLwXKvRUkScnCitrwUr9bjvhOB
	 VMVF5xkdlG1OHsBFXfOhGgQH0Zqrzyk1A2Ef2/nx4KyLw0auHK8U7IInPps9SIl6dl
	 PC9QUHqiJm/Jt4h9t2Oqb6enmVZeR5pTHkpD3jXw=
Received: by smtp.kernel.org (Postfix) with ESMTPS id 745CBC4AF0A
	for <linux-kernel-announce@vger.kernel.org>; Fri,  5 Jul 2024 07:50:49 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id 61265C433A2
	for <linux-kernel-announce@vger.kernel.org>; Fri,  5 Jul 2024 07:50:49 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.1.97 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Fri, 05 Jul 2024 07:50:49 +0000
Message-Id: <20240705075049.release-6.1.97@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.1.97
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.97.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.97.xz

Linux kernel version 6.1.97 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.97.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.97.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.97.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.1.97/v6.1.96

