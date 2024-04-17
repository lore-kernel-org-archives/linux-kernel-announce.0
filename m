Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 81BD013C3E4
	for <linux-kernel-announce@vger.kernel.org>; Wed, 17 Apr 2024 09:35:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713346543; cv=none; b=njdnYyrR/5gJK/2MvIPisqK0B7mMgBJ+Uiepf/lWlbsB66Gnj+XOhEehDIMN9GmoZJMTjnTVN3V6Wapff1JdEUkxKNjx/OukNcjTAHS1YtnAAVopxHyZ9yDHI/QRaEj4RG3FRc1nq2lDU6G0tdV+VIsESZ/5OOhYK4djduicjYE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713346543; c=relaxed/simple;
	bh=1j98vKTSzCQXzESE7qPp+sKE5mxoLCMaj0SFVOrihY8=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=QTcJUumF5/O1unaKIq/DF/NgneaO0ag272aAjsGmtt7oOYbBJgf8TJQihbkcHiXR3PLa+W/2vtD7tH76tw/G1a7kk8YRHZzz7iP9Blc8bKOqLxzi80k0Ct7f3/66WcVKxlsid3WoHhQhuRAH6Vf5GUcFCyn2mURTuYHvmOgaETA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1713346543;
	bh=1j98vKTSzCQXzESE7qPp+sKE5mxoLCMaj0SFVOrihY8=;
	h=Subject:From:To:Date:From;
	b=nFWOXrybWWzfoK/KAOZEDFXgvb2jQIZeVdpqDYqaPEntLOmPIM3nUDCPOCwOEug2S
	 2qz039r+KqDmzB9F/8T635rp6MijT8rEj7PvH3TujbBD/tREb2NlL5AGNxFPGfw8hN
	 w/rdX1zuVTDKyMFio9pVRyfcOOaQvd8Vuv3d+6iE=
Received: by smtp.kernel.org (Postfix) with ESMTPS id 5994CC072AA
	for <linux-kernel-announce@vger.kernel.org>; Wed, 17 Apr 2024 09:35:43 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id 4ABF5D5B3FD
	for <linux-kernel-announce@vger.kernel.org>; Wed, 17 Apr 2024 09:35:43 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 5.15.156 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Wed, 17 Apr 2024 09:35:43 +0000
Message-Id: <20240417093543.release-5.15.156@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 5.15.156
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.156.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.15.156.xz

Linux kernel version 5.15.156 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.156.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.15.156.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.156.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v5.15.156/v5.15.155

