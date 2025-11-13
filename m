Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43F482FC875
	for <linux-kernel-announce@vger.kernel.org>; Thu, 13 Nov 2025 20:51:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763067074; cv=none; b=dAc2vG7KixFzHTGO33ppHg2ieNbv4FveVjFplc78AqF1hzquGEWzQHSsY+mhm/1t8fjo9+6OKdJkHBnpVceXBx3bDqlxYYktsAtadrl0EqkHQhijy4XEGUBHyszd9a8A+bp9e5RX/qJpc7UDx4lCaCY9Zp3B3ufOIAU11eqjAtA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763067074; c=relaxed/simple;
	bh=RZaif/ygLipQcHdMXl0lAm3p8ThvFUscRbLnqcXfkpw=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=MP7sCCw9qgEllngQBcMm2fUG5Kl3tmsPVxS87fCm2aze5f0I4rK0/bJtI2MDJvTTuayVSQWTvrp7lDiUDXdkEJgVY3m6m41r+vL89D5cujesG1Ffji+M1pbNZXT48L31/HIIxmaGk4+oFPbnlBEd1sccCHOuX/5Tw7VBW8fyM98=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1763067074;
	bh=RZaif/ygLipQcHdMXl0lAm3p8ThvFUscRbLnqcXfkpw=;
	h=Subject:From:To:Date:From;
	b=Ld0bKeRgtf9SAhYgY6S5+sZBFhSWXEV2aETj5UIpu/BQXCwTpzg5vElopmDVVL8Ds
	 ZNen3I8b5308zGnz+sR0CYB1HvfDthOtW6muCdDkpxrahmA6O8g+aS5Z2k18+EiOW5
	 AXCSpl0vDRutY5b4r2EfY5X3CekJxKbD3zaSXre0=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 172C0C4CEF5
	for <linux-kernel-announce@vger.kernel.org>; Thu, 13 Nov 2025 20:51:14 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 393903A549BF
	for <linux-kernel-announce@vger.kernel.org>; Thu, 13 Nov 2025 20:50:44 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.12.58 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 13 Nov 2025 20:50:42 +0000
Message-Id: <20251113205042.release-6.12.58@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.12.58
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.58.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.58.xz

Linux kernel version 6.12.58 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.58.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.58.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.58.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.12.58/v6.12.57

